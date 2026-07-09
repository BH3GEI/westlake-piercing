.class public Landroid/aconfig/DeviceProtos;
.super Ljava/lang/Object;
.source "DeviceProtos.java"


# static fields
.field private static final APEX_ACONFIG_PATH_SUFFIX:Ljava/lang/String; = "/etc/aconfig_flags.pb"

.field private static final APEX_DIR:Ljava/lang/String; = "/apex"

.field public static final PATHS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    const-string v0, "/product/etc/aconfig_flags.pb"

    const-string v1, "/vendor/etc/aconfig_flags.pb"

    const-string v2, "/system/etc/aconfig_flags.pb"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/aconfig/DeviceProtos;->PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAndParseFlagProtos()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/aconfig/nano/Aconfig$parsed_flag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/aconfig/nano/Aconfig$parsed_flag;>;"
    invoke-static {}, Landroid/aconfig/DeviceProtos;->parsedFlagsProtoPaths()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object v4

    invoke-static {v4}, Landroid/aconfig/nano/Aconfig$parsed_flags;->parseFrom([B)Landroid/aconfig/nano/Aconfig$parsed_flags;

    move-result-object v4

    .line 57
    .local v4, "parsedFlags":Landroid/aconfig/nano/Aconfig$parsed_flags;
    iget-object v5, v4, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 58
    .local v8, "flag":Landroid/aconfig/nano/Aconfig$parsed_flag;
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    nop

    .end local v8    # "flag":Landroid/aconfig/nano/Aconfig$parsed_flag;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 60
    .end local v4    # "parsedFlags":Landroid/aconfig/nano/Aconfig$parsed_flags;
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 61
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 55
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    .line 63
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    :cond_1
    return-object v0
.end method

.method public static parsedFlagsProtoPaths()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/aconfig/DeviceProtos;->PATHS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    const-string v2, "/apex"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "apexDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 79
    .local v2, "subdirs":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 80
    return-object v0

    .line 83
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 86
    .local v5, "prefix":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    goto :goto_1

    .line 90
    :cond_2
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/etc/aconfig_flags.pb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v6, "protoPath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 92
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v5    # "prefix":Ljava/io/File;
    .end local v6    # "protoPath":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    :cond_4
    return-object v0
.end method
