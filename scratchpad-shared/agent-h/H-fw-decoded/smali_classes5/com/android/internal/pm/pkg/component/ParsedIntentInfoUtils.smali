.class public Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;
.super Ljava/lang/Object;
.source "ParsedIntentInfoUtils.java"


# static fields
.field public static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist parseData(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 11
    .param p0, "intentInfo"    # Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 374
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 375
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 377
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 381
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 383
    return-object v4

    .line 387
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_0
    :goto_0
    const/16 v4, 0xb

    :try_start_3
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 389
    .end local v3    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 390
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    .line 393
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 395
    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 396
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 399
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 401
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 402
    invoke-virtual {v0, v4, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 406
    :cond_3
    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 408
    .end local v4    # "str":Ljava/lang/String;
    .restart local v5    # "str":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 409
    invoke-virtual {v0, v5, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 413
    :cond_4
    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 415
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    const/4 v5, 0x2

    if-eqz v4, :cond_6

    .line 416
    if-nez p3, :cond_5

    .line 417
    const-string/jumbo v2, "sspPattern not allowed here; ssp must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 417
    return-object v2

    .line 420
    :cond_5
    :try_start_4
    invoke-virtual {v0, v4, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 424
    :cond_6
    const/16 v6, 0xf

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 426
    .end local v4    # "str":Ljava/lang/String;
    .local v6, "str":Ljava/lang/String;
    const/4 v4, 0x3

    if-eqz v6, :cond_8

    .line 427
    if-nez p3, :cond_7

    .line 428
    const-string/jumbo v2, "sspAdvancedPattern not allowed here; ssp must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 428
    return-object v2

    .line 431
    :cond_7
    :try_start_5
    invoke-virtual {v0, v6, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 435
    :cond_8
    const/16 v7, 0xd

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 437
    .end local v6    # "str":Ljava/lang/String;
    .local v7, "str":Ljava/lang/String;
    const/4 v6, 0x4

    if-eqz v7, :cond_9

    .line 438
    invoke-virtual {v0, v7, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 443
    :cond_9
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    .line 445
    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v9

    .line 447
    .local v9, "port":Ljava/lang/String;
    if-eqz v8, :cond_a

    .line 448
    invoke-virtual {v0, v8, v9}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_a
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 453
    .end local v7    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 454
    invoke-virtual {v0, v10, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 457
    :cond_b
    const/4 v7, 0x5

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 459
    .end local v10    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 460
    invoke-virtual {v0, v7, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 463
    :cond_c
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 465
    .end local v7    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 466
    if-nez p3, :cond_d

    .line 467
    const-string v2, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 467
    return-object v2

    .line 470
    :cond_d
    :try_start_6
    invoke-virtual {v0, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 473
    :cond_e
    const/16 v5, 0xe

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 475
    .end local v3    # "str":Ljava/lang/String;
    .restart local v5    # "str":Ljava/lang/String;
    if-eqz v5, :cond_10

    .line 476
    if-nez p3, :cond_f

    .line 477
    const-string v2, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 477
    return-object v2

    .line 480
    :cond_f
    :try_start_7
    invoke-virtual {v0, v5, v4}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 483
    :cond_10
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 485
    .end local v5    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 486
    invoke-virtual {v0, v2, v6}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 490
    :cond_11
    const/4 v3, 0x0

    invoke-interface {p4, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 492
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 490
    return-object v3

    .line 492
    .end local v2    # "str":Ljava/lang/String;
    .end local v8    # "host":Ljava/lang/String;
    .end local v9    # "port":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 493
    throw v2
.end method

.method public static blacklist parseIntentInfo(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 16
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "allowGlobs"    # Z
    .param p5, "allowAutoVerify"    # Z
    .param p6, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "ZZ",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    invoke-direct {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;-><init>()V

    .line 61
    .local v1, "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    .line 62
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 64
    .local v8, "sa":Landroid/content/res/TypedArray;
    nop

    .line 65
    const/4 v0, 0x2

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v8, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 64
    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 66
    const/4 v10, 0x3

    invoke-virtual {v8, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/IntentFilter;->setOrder(I)V

    .line 68
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    .local v5, "v":Landroid/util/TypedValue;
    if-eqz v5, :cond_0

    .line 70
    :try_start_1
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 71
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-nez v6, :cond_0

    .line 72
    invoke-virtual {v5}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v5    # "v":Landroid/util/TypedValue;
    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    move-object v5, v1

    goto/16 :goto_8

    .line 76
    .restart local v5    # "v":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    :try_start_2
    sget-boolean v6, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->sUseRoundIcon:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_1

    .line 77
    const/4 v6, 0x7

    :try_start_3
    invoke-virtual {v8, v6, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->getIcon()I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v11, 0x1

    if-nez v6, :cond_2

    .line 82
    nop

    .line 83
    :try_start_5
    invoke-virtual {v8, v11, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 82
    invoke-virtual {v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 86
    :cond_2
    if-eqz p5, :cond_3

    .line 87
    const/4 v6, 0x6

    invoke-virtual {v8, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->setAutoVerify(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    .end local v5    # "v":Landroid/util/TypedValue;
    :cond_3
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    nop

    .line 94
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 96
    .local v12, "depth":I
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v13, v5

    .local v13, "type":I
    if-eq v5, v11, :cond_f

    if-ne v13, v10, :cond_5

    .line 98
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v12, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v6, p6

    move-object v5, v1

    goto/16 :goto_7

    .line 99
    :cond_5
    :goto_2
    if-eq v13, v0, :cond_6

    .line 100
    goto :goto_1

    .line 102
    :cond_6
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 103
    goto :goto_1

    .line 107
    :cond_7
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, "nodeName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_8
    goto :goto_3

    :sswitch_0
    const-string v5, "category"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v11

    goto :goto_4

    :sswitch_1
    const-string v5, "data"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v0

    goto :goto_4

    :sswitch_2
    const-string/jumbo v5, "uri-relative-filter-group"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v10

    goto :goto_4

    :sswitch_3
    const-string v5, "action"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v9

    goto :goto_4

    :goto_3
    const/4 v5, -0x1

    :goto_4
    move-object v6, v1

    .end local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .local v6, "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    const-wide/32 v0, 0x9029125

    const/4 v9, 0x0

    const-string v10, "name"

    const-string v11, "http://schemas.android.com/apk/res/android"

    const-string v15, "No value supplied for <android:name>"

    packed-switch v5, :pswitch_data_0

    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .local v5, "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    goto/16 :goto_5

    .line 143
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :pswitch_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->relativeReferenceIntentFilters()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    move/from16 v5, p4

    move-object v1, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseRelRefGroup(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 145
    move-object v5, v1

    .end local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    goto/16 :goto_6

    .line 143
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :cond_9
    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    goto :goto_5

    .line 140
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :pswitch_1
    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    move/from16 v1, p4

    invoke-static {v5, v3, v4, v1, v6}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseData(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 141
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_6

    .line 125
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :pswitch_2
    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-interface {v4, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "value":Ljava/lang/String;
    if-nez v10, :cond_a

    .line 127
    invoke-interface {v6, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_6

    .line 128
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 129
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 131
    invoke-interface {v6, v15, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_6

    .line 134
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_b
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 135
    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 137
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_6

    .line 110
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v10    # "value":Ljava/lang/String;
    .restart local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :pswitch_3
    move-object v5, v6

    move-object/from16 v6, p6

    .end local v6    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    invoke-interface {v4, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .restart local v10    # "value":Ljava/lang/String;
    if-nez v10, :cond_c

    .line 112
    invoke-interface {v6, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_6

    .line 113
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 114
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    invoke-interface {v6, v15, v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_6

    .line 119
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_d
    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    invoke-interface {v6, v9}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 122
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_6

    .line 148
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v10    # "value":Ljava/lang/String;
    :goto_5
    const-string v0, "<intent-filter>"

    invoke-static {v0, v2, v4, v6}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 152
    .restart local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :goto_6
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 153
    invoke-interface {v6, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 155
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;
    .end local v14    # "nodeName":Ljava/lang/String;
    :cond_e
    move-object v1, v5

    const/4 v0, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x1

    goto/16 :goto_1

    .line 96
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :cond_f
    move-object/from16 v6, p6

    move-object v5, v1

    .line 157
    .end local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :goto_7
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;->setHasDefault(Z)Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;

    .line 174
    invoke-interface {v6, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 92
    .end local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .end local v12    # "depth":I
    .end local v13    # "type":I
    .restart local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :catchall_1
    move-exception v0

    move-object/from16 v6, p6

    move-object v5, v1

    .end local v1    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    .restart local v5    # "intentInfo":Lcom/android/internal/pm/pkg/component/ParsedIntentInfoImpl;
    :goto_8
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_3
        -0x472f1456 -> :sswitch_2
        0x2eefaa -> :sswitch_1
        0x302bcfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist parseRelRefGroup(Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .param p0, "intentInfo"    # Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "allowGlobs"    # Z
    .param p5, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            "Lcom/android/internal/pm/pkg/parsing/ParsingPackage;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-interface {p0}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 183
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUriRelativeFilterGroup:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 187
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 188
    .local v2, "action":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    const/4 v2, 0x1

    .line 191
    :cond_0
    new-instance v5, Landroid/content/UriRelativeFilterGroup;

    invoke-direct {v5, v2}, Landroid/content/UriRelativeFilterGroup;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v2    # "action":I
    .local v5, "group":Landroid/content/UriRelativeFilterGroup;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    nop

    .line 195
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 197
    .local v2, "depth":I
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    if-eq v6, v3, :cond_6

    const/4 v6, 0x3

    if-ne v7, v6, :cond_1

    .line 199
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_6

    .line 200
    :cond_1
    const/4 v6, 0x2

    if-eq v7, v6, :cond_2

    .line 201
    goto :goto_0

    .line 203
    :cond_2
    invoke-static {}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->getAconfigFlags()Lcom/android/internal/pm/pkg/component/AconfigFlags;

    move-result-object v6

    invoke-virtual {v6, p1, p3}, Lcom/android/internal/pm/pkg/component/AconfigFlags;->skipCurrentElement(Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    goto :goto_0

    .line 208
    :cond_3
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "nodeName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_4
    goto :goto_1

    :pswitch_0
    const-string v8, "data"

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_1

    .line 214
    const-string v8, "<uri-relative-filter-group>"

    invoke-static {v8, p1, p3, p5}, Lcom/android/internal/pm/pkg/parsing/ParsingUtils;->unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .local v8, "result":Landroid/content/pm/parsing/result/ParseResult;
    goto :goto_3

    .line 211
    .end local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :pswitch_1
    invoke-static {v5, p2, p3, p4, p5}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfoUtils;->parseRelRefGroupData(Landroid/content/UriRelativeFilterGroup;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 212
    .restart local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;
    nop

    .line 219
    :goto_3
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 220
    invoke-interface {p5, v8}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 222
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v8    # "result":Landroid/content/pm/parsing/result/ParseResult;
    :cond_5
    goto :goto_0

    .line 224
    :cond_6
    invoke-virtual {v5}, Landroid/content/UriRelativeFilterGroup;->getUriRelativeFilters()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 225
    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addUriRelativeFilterGroup(Landroid/content/UriRelativeFilterGroup;)V

    .line 227
    :cond_7
    const/4 v3, 0x0

    invoke-interface {p5, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 193
    .end local v2    # "depth":I
    .end local v5    # "group":Landroid/content/UriRelativeFilterGroup;
    .end local v7    # "type":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    throw v2

    :pswitch_data_0
    .packed-switch 0x2eefaa
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist parseRelRefGroupData(Landroid/content/UriRelativeFilterGroup;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .param p0, "group"    # Landroid/content/UriRelativeFilterGroup;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UriRelativeFilterGroup;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Z",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 239
    new-instance v4, Landroid/content/UriRelativeFilter;

    invoke-direct {v4, v2, v2, v3}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 243
    :cond_0
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 245
    .end local v3    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v4, :cond_1

    .line 246
    new-instance v5, Landroid/content/UriRelativeFilter;

    invoke-direct {v5, v2, v3, v4}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 250
    :cond_1
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v5

    .line 252
    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    const/4 v4, 0x2

    if-eqz v5, :cond_3

    .line 253
    if-nez p3, :cond_2

    .line 254
    const-string v1, "pathPattern not allowed here; path must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    return-object v1

    .line 257
    :cond_2
    :try_start_1
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v2, v4, v5}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 261
    :cond_3
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 263
    .end local v5    # "str":Ljava/lang/String;
    .local v6, "str":Ljava/lang/String;
    const/4 v5, 0x3

    if-eqz v6, :cond_5

    .line 264
    if-nez p3, :cond_4

    .line 265
    const-string v1, "pathAdvancedPattern not allowed here; path must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    return-object v1

    .line 268
    :cond_4
    :try_start_2
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v2, v5, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 272
    :cond_5
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 274
    .end local v6    # "str":Ljava/lang/String;
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 275
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v2, v1, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 279
    :cond_6
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 281
    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 282
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v4, v2, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 286
    :cond_7
    const/16 v7, 0x15

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 288
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 289
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v4, v3, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 293
    :cond_8
    const/16 v6, 0x16

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 295
    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 296
    if-nez p3, :cond_9

    .line 297
    const-string v1, "fragmentPattern not allowed here; fragment must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    return-object v1

    .line 300
    :cond_9
    :try_start_3
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v4, v4, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 304
    :cond_a
    const/16 v7, 0x17

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 306
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 307
    if-nez p3, :cond_b

    .line 308
    const-string v1, "fragmentAdvancedPattern not allowed here; fragment must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    return-object v1

    .line 311
    :cond_b
    :try_start_4
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v4, v5, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 315
    :cond_c
    const/16 v6, 0x18

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 317
    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    if-eqz v6, :cond_d

    .line 318
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v4, v1, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 322
    :cond_d
    const/16 v7, 0x10

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 324
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_e

    .line 325
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v3, v2, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 329
    :cond_e
    const/16 v6, 0x11

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 331
    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 332
    new-instance v7, Landroid/content/UriRelativeFilter;

    invoke-direct {v7, v3, v3, v6}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 336
    :cond_f
    const/16 v7, 0x12

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 338
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_11

    .line 339
    if-nez p3, :cond_10

    .line 340
    const-string/jumbo v1, "queryPattern not allowed here; query must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    return-object v1

    .line 343
    :cond_10
    :try_start_5
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v3, v4, v7}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 347
    :cond_11
    const/16 v4, 0x13

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 349
    .end local v7    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    if-eqz v4, :cond_13

    .line 350
    if-nez p3, :cond_12

    .line 351
    const-string/jumbo v1, "queryAdvancedPattern not allowed here; query must be literal"

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 351
    return-object v1

    .line 354
    :cond_12
    :try_start_6
    new-instance v6, Landroid/content/UriRelativeFilter;

    invoke-direct {v6, v3, v5, v4}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 358
    :cond_13
    const/16 v5, 0x14

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 360
    .end local v4    # "str":Ljava/lang/String;
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 361
    new-instance v4, Landroid/content/UriRelativeFilter;

    invoke-direct {v4, v3, v1, v2}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    .line 365
    :cond_14
    const/4 v1, 0x0

    invoke-interface {p4, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    return-object v1

    .line 367
    .end local v2    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    throw v1
.end method
