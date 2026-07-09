.class public Lcom/android/internal/pm/pkg/component/AconfigFlags;
.super Ljava/lang/Object;
.source "AconfigFlags.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "AconfigFlags"

.field private static final blacklist OVERRIDE_PREFIX:Ljava/lang/String; = "device_config_overrides/"

.field private static final blacklist STAGED_PREFIX:Ljava/lang/String; = "staged/"


# instance fields
.field private final blacklist mAconfigPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/flagging/AconfigPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFlagValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 8

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mAconfigPackages:Ljava/util/Map;

    .line 68
    invoke-static {}, Landroid/content/res/Flags;->manifestFlagging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->useNewStorage()Z

    move-result v0

    const-string v1, "AconfigFlags"

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "Using new flag storage"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 78
    :cond_1
    const-string v0, "Using OLD proto flag storage"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2

    invoke-static {}, Landroid/aconfig/DeviceProtos;->parsedFlagsProtoPaths()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Landroid/aconfig/DeviceProtos;->PATHS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    nop

    .line 82
    .local v0, "defaultFlagProtoFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    .local v4, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .local v5, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->loadAconfigDefaultValues([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 83
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "defaultFlagProtoFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "fileName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/internal/pm/pkg/component/AconfigFlags;
    :goto_2
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 85
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "defaultFlagProtoFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/pm/pkg/component/AconfigFlags;
    :catch_0
    move-exception v5

    .line 86
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read Aconfig values from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_3
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 92
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->loadServerOverrides()V

    .line 95
    .end local v0    # "defaultFlagProtoFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_4
    return-void
.end method

.method private blacklist getFlagValueFromNewStorage(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "flagPackageAndName"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 241
    .local v0, "value":Ljava/lang/Boolean;
    return-object v0

    .line 244
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 245
    .local v0, "index":I
    const/4 v1, 0x0

    const-string v2, "AconfigFlags"

    if-gez v0, :cond_1

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse package name from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object v1

    .line 249
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "flagPackage":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "flagName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 252
    .local v6, "value":Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mAconfigPackages:Ljava/util/Map;

    new-instance v8, Lcom/android/internal/pm/pkg/component/AconfigFlags$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/internal/pm/pkg/component/AconfigFlags$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/flagging/AconfigPackage;

    .line 260
    .local v7, "aconfigPackage":Landroid/os/flagging/AconfigPackage;
    if-eqz v7, :cond_2

    .line 265
    :try_start_0
    invoke-virtual {v7, v5, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    .line 269
    goto :goto_0

    .line 266
    :catch_0
    move-exception v3

    .line 267
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read Aconfig flag value for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    return-object v1

    .line 274
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object v6
.end method

.method static synthetic blacklist lambda$getFlagValueFromNewStorage$0(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;
    .locals 3
    .param p0, "p"    # Ljava/lang/String;

    .line 254
    :try_start_0
    invoke-static {p0}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load aconfig package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AconfigFlags"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist loadAconfigDefaultValues([B)V
    .locals 10
    .param p1, "fileContents"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-static {p1}, Landroid/aconfig/nano/Aconfig$parsed_flags;->parseFrom([B)Landroid/aconfig/nano/Aconfig$parsed_flags;

    move-result-object v0

    .line 203
    .local v0, "parsedFlags":Landroid/aconfig/nano/Aconfig$parsed_flags;
    iget-object v1, v0, Landroid/aconfig/nano/Aconfig$parsed_flags;->parsedFlag:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 204
    .local v5, "flag":Landroid/aconfig/nano/Aconfig$parsed_flag;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "flagPackageAndName":Ljava/lang/String;
    iget v7, v5, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    move v8, v3

    .line 206
    .local v8, "flagValue":Z
    :goto_1
    iget-object v7, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v5    # "flag":Landroid/aconfig/nano/Aconfig$parsed_flag;
    .end local v6    # "flagPackageAndName":Ljava/lang/String;
    .end local v8    # "flagValue":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method private blacklist loadServerOverrides()V
    .locals 18

    .line 121
    move-object/from16 v1, p0

    const-string/jumbo v0, "staged/"

    const-string v2, "device_config_overrides/"

    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "settings_config.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v3, "settingsFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v4, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    .line 125
    .local v5, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_d

    const-string/jumbo v6, "settings"

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 126
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 127
    .local v6, "flagPriority":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    .line 129
    .local v8, "outerDepth":I
    :goto_0
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_d

    if-ne v10, v7, :cond_0

    .line 130
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v8, :cond_d

    .line 131
    :cond_0
    if-eq v10, v7, :cond_c

    const/4 v9, 0x4

    if-ne v10, v9, :cond_1

    .line 132
    goto :goto_0

    .line 134
    :cond_1
    const-string/jumbo v9, "setting"

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 135
    goto :goto_0

    .line 137
    :cond_2
    const-string v9, "name"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v12, "value"

    invoke-interface {v5, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 139
    .local v11, "value":Ljava/lang/String;
    if-eqz v9, :cond_b

    if-nez v11, :cond_3

    .line 140
    goto :goto_0

    .line 143
    :cond_3
    const-string v12, "false"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string/jumbo v12, "true"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 144
    goto :goto_0

    .line 146
    :cond_4
    const-string v12, "/"

    .line 147
    .local v12, "separator":Ljava/lang/String;
    const-string v13, "default"

    .line 148
    .local v13, "prefix":Ljava/lang/String;
    const/4 v14, 0x0

    .line 149
    .local v14, "priority":I
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 150
    move-object v13, v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 152
    const-string v15, ":"

    move-object v12, v15

    .line 153
    const/16 v14, 0x14

    goto :goto_1

    .line 154
    :cond_5
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 155
    move-object v13, v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 157
    const-string v15, "*"

    move-object v12, v15

    .line 158
    const/16 v14, 0xa

    .line 160
    :cond_6
    :goto_1
    invoke-static {v9, v12}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->parseFlagPackageAndName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 161
    .local v15, "flagPackageAndName":Ljava/lang/String;
    if-nez v15, :cond_7

    .line 162
    goto :goto_0

    .line 166
    :cond_7
    iget-object v7, v1, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v7, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 167
    const/4 v7, 0x3

    goto/16 :goto_0

    .line 174
    :cond_8
    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 175
    .local v7, "currentPriority":Ljava/lang/Integer;
    if-eqz v7, :cond_9

    move-object/from16 v16, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v14, :cond_a

    .line 182
    move-object/from16 v0, v16

    const/4 v7, 0x3

    goto/16 :goto_0

    .line 175
    :cond_9
    move-object/from16 v16, v0

    .line 184
    :cond_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, v1, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    const/4 v7, 0x3

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    .end local v7    # "currentPriority":Ljava/lang/Integer;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "separator":Ljava/lang/String;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "priority":I
    .end local v15    # "flagPackageAndName":Ljava/lang/String;
    goto/16 :goto_0

    .line 139
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v0

    const/4 v7, 0x3

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 131
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_c
    move-object/from16 v16, v0

    const/4 v7, 0x3

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 188
    .end local v5    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v6    # "flagPriority":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "outerDepth":I
    .end local v10    # "type":I
    :cond_d
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 190
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 123
    .restart local v4    # "inputStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "settingsFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/internal/pm/pkg/component/AconfigFlags;
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 188
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "settingsFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/internal/pm/pkg/component/AconfigFlags;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AconfigFlags"

    const-string v2, "Failed to read Aconfig values from settings_config.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private static blacklist parseFlagPackageAndName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fullName"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 196
    const/4 v1, 0x0

    return-object v1

    .line 198
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist useNewStorage()Z
    .locals 1

    .line 98
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->newStoragePublicApi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/res/Flags;->useNewAconfigStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist addFlagValuesForTesting(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 343
    .local p1, "flagValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 344
    return-void
.end method

.method public blacklist getFlagValue(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "flagPackageAndName"    # Ljava/lang/String;

    .line 217
    invoke-static {}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->useNewStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getFlagValueFromNewStorage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/AconfigFlags;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 224
    .local v0, "value":Ljava/lang/Boolean;
    return-object v0
.end method

.method public blacklist skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;Z)Z
    .locals 7
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "allowNoNamespace"    # Z

    .line 299
    invoke-static {}, Landroid/content/res/Flags;->manifestFlagging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 300
    return v1

    .line 302
    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v2, "featureFlag"

    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "featureFlag":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 305
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_1
    if-nez v0, :cond_2

    .line 308
    return v1

    .line 310
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v0

    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, "negated":Z
    const-string v4, "!"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    const/4 v2, 0x1

    .line 314
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->getFlagValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 317
    .local v4, "flagValue":Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 318
    .local v5, "isUndefined":Z
    if-nez v4, :cond_4

    .line 319
    const/4 v5, 0x1

    .line 320
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 322
    :cond_4
    const/4 v1, 0x0

    .line 323
    .local v1, "shouldSkip":Z
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v2, :cond_5

    .line 325
    const/4 v1, 0x1

    .line 327
    :cond_5
    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->includeFeatureFlagsInPackageCacher()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 328
    if-eqz v5, :cond_6

    .line 329
    invoke-interface {p1, v0, v3}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    goto :goto_0

    .line 331
    :cond_6
    invoke-interface {p1, v0, v4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    .line 334
    :cond_7
    :goto_0
    return v1
.end method
