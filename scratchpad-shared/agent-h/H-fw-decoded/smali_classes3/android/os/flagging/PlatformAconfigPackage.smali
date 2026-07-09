.class public Landroid/os/flagging/PlatformAconfigPackage;
.super Ljava/lang/Object;
.source "PlatformAconfigPackage.java"


# static fields
.field private static final blacklist BOOT_PATH:Ljava/lang/String; = "/metadata/aconfig/boot/"

.field private static final blacklist MAP_PATH:Ljava/lang/String; = "/metadata/aconfig/maps/"

.field public static final greylist PLATFORM_PACKAGE_MAP_FILES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "PlatformAconfigPackage"

.field static final blacklist sStorageFilesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFlagTable:Landroid/internal/aconfig/storage/FlagTable;

.field private blacklist mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

.field private blacklist mPackageBooleanStartOffset:I

.field private blacklist mPackageId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 63
    const-string v0, "/metadata/aconfig/maps/"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    .line 67
    nop

    .line 68
    const-string/jumbo v1, "system.package.map"

    const-string/jumbo v2, "vendor.package.map"

    const-string/jumbo v3, "product.package.map"

    invoke-static {v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroid/os/flagging/PlatformAconfigPackage;->PLATFORM_PACKAGE_MAP_FILES:Ljava/util/Set;

    .line 71
    sget-object v1, Landroid/os/flagging/PlatformAconfigPackage;->PLATFORM_PACKAGE_MAP_FILES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "pf":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/flagging/PlatformAconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/internal/aconfig/storage/PackageTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/PackageTable;

    move-result-object v3

    .line 74
    .local v3, "pTable":Landroid/internal/aconfig/storage/PackageTable;
    invoke-virtual {v3}, Landroid/internal/aconfig/storage/PackageTable;->getHeader()Landroid/internal/aconfig/storage/PackageTable$Header;

    move-result-object v4

    invoke-virtual {v4}, Landroid/internal/aconfig/storage/PackageTable$Header;->getContainer()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "container":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".flag.map"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-static {v5}, Landroid/os/flagging/PlatformAconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    invoke-static {v5}, Landroid/internal/aconfig/storage/FlagTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagTable;

    move-result-object v5

    .line 77
    .local v5, "fTable":Landroid/internal/aconfig/storage/FlagTable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/metadata/aconfig/boot/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".val"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-static {v6}, Landroid/os/flagging/PlatformAconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    invoke-static {v6}, Landroid/internal/aconfig/storage/FlagValueList;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagValueList;

    move-result-object v6

    .line 79
    .local v6, "fValueList":Landroid/internal/aconfig/storage/FlagValueList;
    new-instance v7, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    invoke-direct {v7, v3, v5, v6}, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;-><init>(Landroid/internal/aconfig/storage/PackageTable;Landroid/internal/aconfig/storage/FlagTable;Landroid/internal/aconfig/storage/FlagValueList;)V

    .line 80
    .local v7, "files":Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    invoke-virtual {v3}, Landroid/internal/aconfig/storage/PackageTable;->getPackageList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 81
    .local v9, "packageName":Ljava/lang/String;
    sget-object v10, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v10, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .end local v9    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 86
    .end local v3    # "pTable":Landroid/internal/aconfig/storage/PackageTable;
    .end local v4    # "container":Ljava/lang/String;
    .end local v5    # "fTable":Landroid/internal/aconfig/storage/FlagTable;
    .end local v6    # "fValueList":Landroid/internal/aconfig/storage/FlagValueList;
    .end local v7    # "files":Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    :cond_0
    goto :goto_2

    .line 83
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "PlatformAconfigPackage"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v2    # "pf":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageBooleanStartOffset:I

    .line 58
    iput v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageId:I

    .line 60
    return-void
.end method

.method public static greylist load(Ljava/lang/String;)Landroid/os/flagging/PlatformAconfigPackage;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 106
    :try_start_0
    new-instance v0, Landroid/os/flagging/PlatformAconfigPackage;

    invoke-direct {v0}, Landroid/os/flagging/PlatformAconfigPackage;-><init>()V

    .line 107
    .local v0, "aconfigPackage":Landroid/os/flagging/PlatformAconfigPackage;
    sget-object v1, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    .line 108
    .local v1, "files":Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    if-nez v1, :cond_0

    .line 109
    const/4 v2, 0x0

    return-object v2

    .line 111
    :cond_0
    iget-object v2, v1, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->packageTable:Landroid/internal/aconfig/storage/PackageTable;

    invoke-virtual {v2, p0}, Landroid/internal/aconfig/storage/PackageTable;->get(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v2

    .line 112
    .local v2, "pNode":Landroid/internal/aconfig/storage/PackageTable$Node;
    iget-object v3, v1, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagTable:Landroid/internal/aconfig/storage/FlagTable;

    iput-object v3, v0, Landroid/os/flagging/PlatformAconfigPackage;->mFlagTable:Landroid/internal/aconfig/storage/FlagTable;

    .line 113
    iget-object v3, v1, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    iput-object v3, v0, Landroid/os/flagging/PlatformAconfigPackage;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    .line 114
    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable$Node;->getBooleanStartIndex()I

    move-result v3

    iput v3, v0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageBooleanStartOffset:I

    .line 115
    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable$Node;->getPackageId()I

    move-result v3

    iput v3, v0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageId:I
    :try_end_0
    .catch Landroid/internal/aconfig/storage/AconfigStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-object v0

    .line 120
    .end local v0    # "aconfigPackage":Landroid/os/flagging/PlatformAconfigPackage;
    .end local v1    # "files":Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;
    .end local v2    # "pNode":Landroid/internal/aconfig/storage/PackageTable$Node;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/flagging/AconfigStorageReadException;

    const/4 v2, 0x0

    const-string v3, "Fail to create PlatformAconfigPackage"

    invoke-direct {v1, v2, v3, v0}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Landroid/internal/aconfig/storage/AconfigStorageException;
    new-instance v1, Landroid/os/flagging/AconfigStorageReadException;

    .line 119
    invoke-virtual {v0}, Landroid/internal/aconfig/storage/AconfigStorageException;->getErrorCode()I

    move-result v2

    const-string v3, "Fail to create AconfigPackage"

    invoke-direct {v1, v2, v3, v0}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 8
    .param p0, "file"    # Ljava/lang/String;

    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    .line 154
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    :try_start_1
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-static {v2}, Landroid/os/flagging/PlatformAconfigPackage;->quietlyDispose(Ljava/io/Closeable;)V

    .line 154
    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    .line 161
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v2, Landroid/os/flagging/AconfigStorageReadException;

    const-string v3, "Fail to mmap storage"

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3, v0}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    .end local p0    # "file":Ljava/lang/String;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "channel":Ljava/nio/channels/FileChannel;
    .restart local p0    # "file":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/os/flagging/PlatformAconfigPackage;->quietlyDispose(Ljava/io/Closeable;)V

    .line 162
    throw v0
.end method

.method private static blacklist quietlyDispose(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closable"    # Ljava/io/Closeable;

    .line 167
    if-eqz p0, :cond_0

    .line 168
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    goto :goto_1

    .line 172
    :cond_0
    :goto_0
    nop

    .line 173
    :goto_1
    return-void
.end method


# virtual methods
.method public greylist getBooleanFlagValue(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 142
    iget-object v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mFlagTable:Landroid/internal/aconfig/storage/FlagTable;

    iget v1, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageId:I

    invoke-virtual {v0, v1, p1}, Landroid/internal/aconfig/storage/FlagTable;->get(ILjava/lang/String;)Landroid/internal/aconfig/storage/FlagTable$Node;

    move-result-object v0

    .line 143
    .local v0, "fNode":Landroid/internal/aconfig/storage/FlagTable$Node;
    if-nez v0, :cond_0

    .line 144
    return p2

    .line 146
    :cond_0
    iget-object v1, p0, Landroid/os/flagging/PlatformAconfigPackage;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    invoke-virtual {v0}, Landroid/internal/aconfig/storage/FlagTable$Node;->getFlagIndex()I

    move-result v2

    iget v3, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageBooleanStartOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/internal/aconfig/storage/FlagValueList;->getBoolean(I)Z

    move-result v1

    return v1
.end method
