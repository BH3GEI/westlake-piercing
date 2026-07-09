.class public Landroid/content/pm/parsing/ApkLiteParseUtils;
.super Ljava/lang/Object;
.source "ApkLiteParseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;
    }
.end annotation


# static fields
.field public static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RES_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final APK_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field public static final DEFAULT_MIN_SDK_VERSION:I = 0x1

.field private static final DEFAULT_TARGET_SDK_VERSION:I = 0x0

.field private static final PARSE_COLLECT_CERTIFICATES:I = 0x20

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field private static final PARSE_IS_SYSTEM_DIR:I = 0x10

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field private static final TAG:Ljava/lang/String; = "ApkLiteParseUtils"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_LIBRARY:Ljava/lang/String; = "library"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field private static final TAG_PROCESS:Ljava/lang/String; = "process"

.field private static final TAG_PROCESSES:Ljava/lang/String; = "processes"

.field private static final TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field private static final TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field private static final TAG_SDK_LIBRARY:Ljava/lang/String; = "sdk-library"

.field private static final TAG_STATIC_LIBRARY:Ljava/lang/String; = "static-library"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static final TAG_USES_SDK_LIBRARY:Ljava/lang/String; = "uses-sdk-library"

.field private static final TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static final TAG_USES_STATIC_LIBRARY:Ljava/lang/String; = "uses-static-library"

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;-><init>(Landroid/content/pm/parsing/ApkLiteParseUtils-IA;)V

    sput-object v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->sSplitNameComparator:Ljava/util/Comparator;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_VERSION:I

    .line 100
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_CODENAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "baseApk"    # Landroid/content/pm/parsing/ApkLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Landroid/content/pm/parsing/ApkLite;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 256
    .local p3, "splitApks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;
    .locals 27
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "baseApk"    # Landroid/content/pm/parsing/ApkLite;
    .param p4, "apkRenamed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Landroid/content/pm/parsing/ApkLite;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 272
    .local p3, "splitApks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing base APK in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x65

    invoke-interface {v0, v3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 277
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v2

    .line 279
    .local v2, "size":I
    const/4 v3, 0x0

    .line 280
    .local v3, "splitNames":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 281
    .local v4, "requiredSplitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 282
    .local v5, "splitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 283
    .local v6, "isFeatureSplits":[Z
    const/4 v7, 0x0

    .line 284
    .local v7, "usesSplitNames":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 285
    .local v8, "configForSplits":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 286
    .local v9, "splitCodePaths":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 287
    .local v10, "splitRevisionCodes":[I
    if-lez v2, :cond_3

    .line 288
    new-array v3, v2, [Ljava/lang/String;

    .line 289
    new-array v4, v2, [Ljava/util/Set;

    .line 290
    new-array v5, v2, [Ljava/util/Set;

    .line 291
    new-array v6, v2, [Z

    .line 292
    new-array v7, v2, [Ljava/lang/String;

    .line 293
    new-array v8, v2, [Ljava/lang/String;

    .line 294
    new-array v9, v2, [Ljava/lang/String;

    .line 295
    new-array v10, v2, [I

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    check-cast v3, [Ljava/lang/String;

    .line 298
    sget-object v11, Landroid/content/pm/parsing/ApkLiteParseUtils;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v3, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 300
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v2, :cond_2

    .line 301
    aget-object v12, v3, v11

    move-object/from16 v13, p3

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/parsing/ApkLite;

    .line 302
    .local v12, "apk":Landroid/content/pm/parsing/ApkLite;
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v14

    aput-object v14, v4, v11

    .line 303
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getSplitTypes()Ljava/util/Set;

    move-result-object v14

    aput-object v14, v5, v11

    .line 304
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getUsesSplitName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v11

    .line 305
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->isFeatureSplit()Z

    move-result v14

    aput-boolean v14, v6, v11

    .line 306
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getConfigForSplit()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v11

    .line 307
    if-eqz p4, :cond_1

    .line 308
    new-instance v14, Ljava/io/File;

    invoke-static {v12}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v1, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v14

    :goto_1
    aput-object v14, v9, v11

    .line 309
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getRevisionCode()I

    move-result v14

    aput v14, v10, v11

    .line 300
    .end local v12    # "apk":Landroid/content/pm/parsing/ApkLite;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v13, p3

    move-object/from16 v18, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    goto :goto_2

    .line 287
    .end local v11    # "i":I
    :cond_3
    move-object/from16 v13, p3

    move-object/from16 v18, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    .line 313
    .end local v3    # "splitNames":[Ljava/lang/String;
    .end local v4    # "requiredSplitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "splitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "isFeatureSplits":[Z
    .end local v7    # "usesSplitNames":[Ljava/lang/String;
    .end local v8    # "configForSplits":[Ljava/lang/String;
    .end local v9    # "splitCodePaths":[Ljava/lang/String;
    .end local v10    # "splitRevisionCodes":[I
    .local v18, "splitNames":[Ljava/lang/String;
    .local v19, "isFeatureSplits":[Z
    .local v20, "usesSplitNames":[Ljava/lang/String;
    .local v21, "configForSplits":[Ljava/lang/String;
    .local v22, "splitCodePaths":[Ljava/lang/String;
    .local v23, "splitRevisionCodes":[I
    .local v25, "requiredSplitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    .local v26, "splitTypes":[Ljava/util/Set;, "[Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 314
    .local v15, "codePath":Ljava/lang/String;
    if-eqz p4, :cond_4

    .line 315
    new-instance v3, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v3

    :goto_3
    move-object/from16 v16, v3

    .line 316
    .local v16, "baseCodePath":Ljava/lang/String;
    new-instance v14, Landroid/content/pm/parsing/PackageLite;

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v24

    move-object/from16 v17, p2

    invoke-direct/range {v14 .. v26}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 316
    invoke-interface {v0, v14}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1034
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 1044
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isDeviceAdminReceiver(Landroid/content/res/XmlResourceParser;Z)Z
    .locals 7
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "applicationHasBindDeviceAdminPermission"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    const-string/jumbo v0, "permission"

    const-string/jumbo v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "permission":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 872
    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 873
    const/4 v1, 0x0

    return v1

    .line 876
    :cond_0
    const/4 v2, 0x0

    .line 877
    .local v2, "hasDeviceAdminReceiver":Z
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 879
    .local v3, "depth":I
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    .line 880
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_6

    .line 881
    :cond_2
    if-eq v5, v4, :cond_1

    const/4 v4, 0x4

    if-ne v5, v4, :cond_3

    .line 883
    goto :goto_0

    .line 885
    :cond_3
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    add-int/lit8 v6, v3, 0x1

    if-eq v4, v6, :cond_4

    .line 887
    goto :goto_0

    .line 889
    :cond_4
    if-nez v2, :cond_1

    const-string/jumbo v4, "meta-data"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 890
    const-string/jumbo v4, "name"

    invoke-interface {p0, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 892
    .local v4, "name":Ljava/lang/String;
    const-string v6, "android.app.device_admin"

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 893
    const/4 v2, 0x1

    .line 895
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 897
    :cond_6
    return v2
.end method

.method private static normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "certDigest"    # Ljava/lang/String;

    .line 863
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    sget-object v0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 832
    .local v0, "certSha256Digests":[Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 834
    .local v1, "depth":I
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    .line 836
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_4

    .line 837
    :cond_0
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 838
    goto :goto_0

    .line 840
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 841
    .local v2, "nodeName":Ljava/lang/String;
    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 842
    const-string/jumbo v4, "http://schemas.android.com/apk/res/android"

    const-string v5, "certDigest"

    invoke-interface {p1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 844
    .local v4, "certSha256Digest":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    return-object v5

    .line 849
    :cond_2
    invoke-static {v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 850
    const-class v5, Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    .line 853
    .end local v2    # "nodeName":Ljava/lang/String;
    .end local v4    # "certSha256Digest":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 855
    :cond_4
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method public static parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "debugPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 70
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "signingDetails"    # Landroid/content/pm/SigningDetails;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 419
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 420
    .local v4, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 423
    :cond_0
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/Pair;

    .line 425
    .local v5, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 426
    invoke-static {v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseRequiredSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    .line 427
    .local v6, "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 430
    :cond_1
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/util/Pair;

    .line 432
    .local v7, "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v0, "installLocation"

    const-string/jumbo v8, "http://schemas.android.com/apk/res/android"

    const/4 v9, -0x1

    invoke-interface {v2, v8, v0, v9}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    .line 434
    .local v21, "installLocation":I
    const-string/jumbo v0, "versionCode"

    const/4 v10, 0x0

    invoke-interface {v2, v8, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 435
    .local v18, "versionCode":I
    const-string/jumbo v0, "versionCodeMajor"

    invoke-interface {v2, v8, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 438
    .local v19, "versionCodeMajor":I
    const-string/jumbo v0, "revisionCode"

    invoke-interface {v2, v8, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 439
    .local v20, "revisionCode":I
    const-string v0, "coreApp"

    const/4 v11, 0x0

    invoke-interface {v2, v11, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v24

    .line 440
    .local v24, "coreApp":Z
    const-string/jumbo v0, "updatableSystem"

    const/4 v12, 0x1

    invoke-interface {v2, v11, v0, v12}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v51

    .line 441
    .local v51, "updatableSystem":Z
    const-string/jumbo v0, "isolatedSplits"

    invoke-interface {v2, v8, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v31

    .line 443
    .local v31, "isolatedSplits":Z
    const-string/jumbo v0, "isFeatureSplit"

    invoke-interface {v2, v8, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    .line 445
    .local v14, "isFeatureSplit":Z
    const-string/jumbo v0, "isSplitRequired"

    invoke-interface {v2, v8, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    .line 447
    .local v17, "isSplitRequired":Z
    const-string v0, "configForSplit"

    invoke-interface {v2, v11, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 448
    .local v15, "configForSplit":Ljava/lang/String;
    const-string v0, "emergencyInstaller"

    invoke-interface {v2, v11, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 450
    .local v52, "emergencyInstaller":Ljava/lang/String;
    const/4 v0, 0x0

    .line 451
    .local v0, "targetSdkVersion":I
    const/4 v11, 0x1

    .line 452
    .local v11, "minSdkVersion":I
    const/4 v13, 0x0

    .line 453
    .local v13, "debuggable":Z
    const/16 v16, 0x0

    .line 454
    .local v16, "profilableByShell":Z
    const/16 v22, 0x0

    .line 455
    .local v22, "multiArch":Z
    const/16 v23, 0x0

    .line 456
    .local v23, "use32bitAbi":Z
    const/16 v25, 0x1

    .line 457
    .local v25, "extractNativeLibs":Z
    const/16 v26, 0x0

    .line 458
    .local v26, "useEmbeddedDex":Z
    const/16 v27, 0x0

    .line 459
    .local v27, "usesSplitName":Ljava/lang/String;
    const/16 v28, 0x0

    .line 460
    .local v28, "targetPackage":Ljava/lang/String;
    const/16 v29, 0x0

    .line 461
    .local v29, "overlayIsStatic":Z
    const/16 v30, 0x0

    .line 462
    .local v30, "overlayPriority":I
    const/16 v32, 0x0

    .line 463
    .local v32, "rollbackDataPolicy":I
    const/16 v33, 0x0

    .line 465
    .local v33, "pageSizeCompat":I
    const/16 v34, 0x0

    .line 466
    .local v34, "requiredSystemPropertyName":Ljava/lang/String;
    const/16 v35, 0x0

    .line 468
    .local v35, "requiredSystemPropertyValue":Ljava/lang/String;
    const/16 v36, 0x0

    .line 470
    .local v36, "hasDeviceAdminReceiver":Z
    const/16 v37, 0x0

    .line 471
    .local v37, "isSdkLibrary":Z
    const/16 v38, 0x0

    .line 472
    .local v38, "isStaticLibrary":Z
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v39, v44

    .line 473
    .local v39, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v9, v10, [J

    .line 474
    .local v9, "usesSdkLibrariesVersionsMajor":[J
    move/from16 v41, v12

    const/4 v12, 0x2

    move/from16 v42, v10

    new-array v10, v12, [I

    aput v42, v10, v41

    aput v42, v10, v42

    const-class v12, Ljava/lang/String;

    invoke-static {v12, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/String;

    .line 476
    .local v10, "usesSdkLibrariesCertDigests":[[Ljava/lang/String;
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v48

    .line 477
    .local v12, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v44, v0

    move-object/from16 v55, v4

    move/from16 v4, v42

    .end local v0    # "targetSdkVersion":I
    .end local v4    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v44, "targetSdkVersion":I
    .local v55, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-array v0, v4, [J

    .line 478
    .local v0, "usesStaticLibrariesVersions":[J
    move-object/from16 v45, v0

    const/4 v4, 0x2

    .end local v0    # "usesStaticLibrariesVersions":[J
    .local v45, "usesStaticLibrariesVersions":[J
    new-array v0, v4, [I

    aput v42, v0, v41

    aput v42, v0, v42

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 480
    .local v0, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v53

    .line 484
    .local v4, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v46

    move-object/from16 v56, v6

    .end local v6    # "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .local v56, "requiredSplitTypesResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    add-int/lit8 v6, v46, 0x1

    .line 486
    .local v6, "searchDepth":I
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v47, v46

    move-object/from16 v50, v0

    move-object/from16 v46, v10

    move/from16 v54, v33

    move-object/from16 v10, v34

    move/from16 v43, v37

    move-object/from16 v49, v45

    move-object/from16 v45, v9

    move/from16 v37, v11

    move-object/from16 v9, v28

    move/from16 v33, v29

    move/from16 v34, v30

    move-object/from16 v11, v35

    move/from16 v28, v23

    move/from16 v30, v25

    move/from16 v29, v26

    move/from16 v25, v13

    move/from16 v26, v16

    move-object/from16 v16, v27

    const/4 v13, 0x2

    move/from16 v27, v22

    move-object/from16 v22, v47

    move/from16 v47, v38

    move/from16 v38, v44

    .line 487
    .end local v0    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v13    # "debuggable":Z
    .end local v23    # "use32bitAbi":Z
    .end local v35    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v44    # "targetSdkVersion":I
    .local v9, "targetPackage":Ljava/lang/String;
    .local v10, "requiredSystemPropertyName":Ljava/lang/String;
    .local v11, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v16, "usesSplitName":Ljava/lang/String;
    .local v22, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v25, "debuggable":Z
    .local v26, "profilableByShell":Z
    .local v27, "multiArch":Z
    .local v28, "use32bitAbi":Z
    .local v29, "useEmbeddedDex":Z
    .local v30, "extractNativeLibs":Z
    .local v33, "overlayIsStatic":Z
    .local v34, "overlayPriority":I
    .local v37, "minSdkVersion":I
    .local v38, "targetSdkVersion":I
    .local v43, "isSdkLibrary":Z
    .local v45, "usesSdkLibrariesVersionsMajor":[J
    .local v46, "usesSdkLibrariesCertDigests":[[Ljava/lang/String;
    .local v47, "isStaticLibrary":Z
    .local v49, "usesStaticLibrariesVersions":[J
    .local v50, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .local v54, "pageSizeCompat":I
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v57, v0

    .local v57, "type":I
    const-string v13, "ApkLiteParseUtils"

    move/from16 v35, v14

    move/from16 v14, v41

    .end local v14    # "isFeatureSplit":Z
    .local v35, "isFeatureSplit":Z
    if-eq v0, v14, :cond_2e

    const/4 v14, 0x3

    move-object/from16 v44, v15

    move/from16 v15, v57

    .end local v57    # "type":I
    .local v15, "type":I
    .local v44, "configForSplit":Ljava/lang/String;
    if-ne v15, v14, :cond_3

    .line 488
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-lt v0, v6, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v68, v4

    move-object/from16 v62, v5

    move/from16 v57, v6

    move-object/from16 v61, v7

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move-object/from16 v65, v11

    move-object v0, v13

    move/from16 v59, v15

    move-object/from16 v58, v22

    move-object/from16 v10, v39

    move/from16 v13, p4

    goto/16 :goto_15

    .line 489
    :cond_3
    :goto_1
    if-eq v15, v14, :cond_2d

    const/4 v14, 0x4

    if-ne v15, v14, :cond_4

    .line 490
    move/from16 v13, p4

    move-object/from16 v68, v4

    move-object/from16 v62, v5

    move/from16 v57, v6

    move-object/from16 v61, v7

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move-object/from16 v65, v11

    move-object/from16 v58, v22

    move-object/from16 v10, v39

    const/16 v41, 0x1

    goto/16 :goto_14

    .line 493
    :cond_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-eq v0, v6, :cond_5

    .line 494
    move/from16 v13, p4

    move-object/from16 v68, v4

    move-object/from16 v62, v5

    move/from16 v57, v6

    move-object/from16 v61, v7

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move-object/from16 v65, v11

    move-object/from16 v58, v22

    move-object/from16 v10, v39

    const/16 v41, 0x1

    goto/16 :goto_14

    .line 497
    :cond_5
    const-string/jumbo v0, "package-verifier"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 498
    invoke-static {v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v0

    .line 499
    .local v0, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v0, :cond_6

    .line 500
    move-object/from16 v14, v22

    .end local v22    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v14, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 499
    .end local v14    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v22    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_6
    move-object/from16 v14, v22

    .line 502
    .end local v0    # "verifier":Landroid/content/pm/VerifierInfo;
    .end local v22    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v14    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :goto_2
    move/from16 v13, p4

    move-object/from16 v68, v4

    move-object/from16 v62, v5

    move/from16 v57, v6

    move-object/from16 v61, v7

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move-object/from16 v65, v11

    move-object/from16 v58, v14

    move-object/from16 v10, v39

    const/16 v41, 0x1

    goto/16 :goto_14

    .end local v14    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v22    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_7
    move-object/from16 v14, v22

    .end local v22    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v14    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    const-string v0, "application"

    move/from16 v57, v6

    .end local v6    # "searchDepth":I
    .local v57, "searchDepth":I
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v6, "name"

    if-eqz v0, :cond_21

    .line 503
    const-string v0, "debuggable"

    const/4 v13, 0x0

    invoke-interface {v2, v8, v0, v13}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v25

    .line 505
    const-string/jumbo v0, "multiArch"

    invoke-interface {v2, v8, v0, v13}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v27

    .line 507
    const-string/jumbo v0, "use32bitAbi"

    invoke-interface {v2, v8, v0, v13}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v28

    .line 509
    const-string v0, "extractNativeLibs"

    const/4 v13, 0x1

    invoke-interface {v2, v8, v0, v13}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v30

    .line 511
    const-string/jumbo v13, "useEmbeddedDex"

    move-object/from16 v58, v14

    const/4 v14, 0x0

    .end local v14    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v58, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    invoke-interface {v2, v8, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 514
    .end local v29    # "useEmbeddedDex":Z
    .local v0, "useEmbeddedDex":Z
    move/from16 v29, v0

    .end local v0    # "useEmbeddedDex":Z
    .restart local v29    # "useEmbeddedDex":Z
    const-string/jumbo v0, "rollbackDataPolicy"

    invoke-interface {v2, v8, v0, v14}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v32

    .line 516
    const-string/jumbo v0, "permission"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 518
    .local v14, "permission":Ljava/lang/String;
    nop

    .line 519
    const-string v0, "android.permission.BIND_DEVICE_ADMIN"

    move/from16 v59, v15

    .end local v15    # "type":I
    .local v59, "type":I
    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 521
    .local v15, "hasBindDeviceAdminPermission":Z
    const-string/jumbo v0, "pageSizeCompat"

    move-object/from16 v60, v14

    const/4 v14, 0x0

    .end local v14    # "permission":Ljava/lang/String;
    .local v60, "permission":Ljava/lang/String;
    invoke-interface {v2, v8, v0, v14}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v54

    .line 525
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    move-object/from16 v62, v5

    move-object/from16 v61, v7

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move/from16 v7, v26

    move-object/from16 v0, v45

    move-object/from16 v5, v46

    move-object/from16 v9, v49

    move-object/from16 v10, v50

    .line 527
    .end local v26    # "profilableByShell":Z
    .end local v45    # "usesSdkLibrariesVersionsMajor":[J
    .end local v46    # "usesSdkLibrariesCertDigests":[[Ljava/lang/String;
    .end local v49    # "usesStaticLibrariesVersions":[J
    .end local v50    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .local v0, "usesSdkLibrariesVersionsMajor":[J
    .local v5, "usesSdkLibrariesCertDigests":[[Ljava/lang/String;
    .local v7, "profilableByShell":Z
    .local v9, "usesStaticLibrariesVersions":[J
    .local v10, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .local v14, "innerDepth":I
    .local v61, "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v62, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v63, "targetPackage":Ljava/lang/String;
    .local v64, "requiredSystemPropertyName":Ljava/lang/String;
    :goto_3
    move-object/from16 v65, v11

    .end local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .local v65, "requiredSystemPropertyValue":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move/from16 v26, v11

    const/4 v3, 0x1

    .local v26, "innerType":I
    if-eq v11, v3, :cond_20

    move/from16 v11, v26

    const/4 v3, 0x3

    .end local v26    # "innerType":I
    .local v11, "innerType":I
    if-ne v11, v3, :cond_9

    .line 528
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v14, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v68, v4

    move v4, v7

    move-object v11, v9

    move-object/from16 v49, v10

    move-object/from16 v10, v39

    goto/16 :goto_10

    .line 529
    :cond_9
    :goto_4
    const/4 v3, 0x3

    if-eq v11, v3, :cond_1f

    const/4 v3, 0x4

    if-ne v11, v3, :cond_a

    .line 530
    move-object/from16 v68, v4

    move v4, v7

    move-object v11, v9

    move-object/from16 v49, v10

    move-object/from16 v67, v13

    move/from16 v66, v14

    move-object/from16 v10, v39

    const/16 v53, 0x4

    goto/16 :goto_f

    .line 533
    :cond_a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v26, v11

    .end local v11    # "innerType":I
    .restart local v26    # "innerType":I
    add-int/lit8 v11, v14, 0x1

    if-eq v3, v11, :cond_b

    .line 535
    move-object/from16 v68, v4

    move v4, v7

    move-object v11, v9

    move-object/from16 v49, v10

    move-object/from16 v67, v13

    move/from16 v66, v14

    move-object/from16 v10, v39

    const/16 v53, 0x4

    goto/16 :goto_f

    .line 538
    :cond_b
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_c
    goto :goto_5

    :sswitch_0
    const-string/jumbo v11, "profileable"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    goto :goto_6

    :sswitch_1
    const-string/jumbo v11, "library"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x6

    goto :goto_6

    :sswitch_2
    const-string/jumbo v11, "uses-static-library"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    goto :goto_6

    :sswitch_3
    const-string/jumbo v11, "receiver"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :sswitch_4
    const-string/jumbo v11, "static-library"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x5

    goto :goto_6

    :sswitch_5
    const-string/jumbo v11, "processes"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x7

    goto :goto_6

    :sswitch_6
    const-string/jumbo v11, "uses-sdk-library"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x2

    goto :goto_6

    :sswitch_7
    const-string/jumbo v11, "sdk-library"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x4

    goto :goto_6

    :goto_5
    const/4 v3, -0x1

    :goto_6
    const-wide/16 v45, 0x0

    const-string/jumbo v11, "version"

    move/from16 v49, v3

    const-string v3, "certDigest"

    move/from16 v66, v14

    .end local v14    # "innerDepth":I
    .local v66, "innerDepth":I
    const-string/jumbo v14, "versionMajor"

    move/from16 v50, v7

    .end local v7    # "profilableByShell":Z
    .local v50, "profilableByShell":Z
    const-string v7, " version: "

    packed-switch v49, :pswitch_data_0

    move-object/from16 v68, v4

    move-object v11, v9

    move-object/from16 v49, v10

    move-object/from16 v67, v13

    move-object/from16 v10, v39

    move/from16 v4, v50

    const/16 v53, 0x4

    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v50    # "profilableByShell":Z
    .local v4, "profilableByShell":Z
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "usesStaticLibrariesVersions":[J
    .local v49, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .local v68, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    goto/16 :goto_d

    .line 700
    .end local v11    # "usesStaticLibrariesVersions":[J
    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v9    # "usesStaticLibrariesVersions":[J
    .local v10, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v50    # "profilableByShell":Z
    :pswitch_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 702
    .local v3, "processesDepth":I
    :cond_d
    :goto_7
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v11, v7

    const/4 v14, 0x1

    .local v11, "processesType":I
    if-eq v7, v14, :cond_11

    const/4 v7, 0x3

    if-ne v11, v7, :cond_e

    .line 704
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v3, :cond_11

    .line 705
    :cond_e
    if-eq v11, v7, :cond_d

    const/4 v7, 0x4

    if-ne v11, v7, :cond_f

    .line 707
    goto :goto_7

    .line 710
    :cond_f
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    add-int/lit8 v7, v3, 0x1

    if-eq v14, v7, :cond_10

    .line 712
    goto :goto_7

    .line 715
    :cond_10
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "process"

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 716
    invoke-static {}, Lcom/android/internal/pm/pkg/component/flags/Flags;->enablePerProcessUseEmbeddedDexAttr()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 717
    const/4 v14, 0x0

    invoke-interface {v2, v8, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    or-int v29, v29, v7

    goto :goto_7

    .line 721
    .end local v3    # "processesDepth":I
    .end local v11    # "processesType":I
    :cond_11
    move-object/from16 v68, v4

    move-object/from16 v49, v10

    move-object/from16 v67, v13

    move-object/from16 v10, v39

    move/from16 v7, v50

    const/16 v53, 0x4

    goto/16 :goto_e

    .line 689
    :pswitch_1
    invoke-interface {v2, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "libName":Ljava/lang/String;
    if-nez v3, :cond_12

    .line 692
    const-string v6, "Bad library declaration name: null"

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 694
    :cond_12
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 695
    new-instance v7, Landroid/content/pm/SharedLibraryInfo;

    move-object/from16 v67, v13

    const-wide/16 v13, -0x1

    const/4 v11, 0x1

    invoke-direct {v7, v3, v13, v14, v11}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    move-object/from16 v68, v4

    move-object v11, v9

    move-object/from16 v49, v10

    move-object/from16 v10, v39

    move/from16 v4, v50

    const/16 v53, 0x4

    goto/16 :goto_d

    .line 669
    .end local v3    # "libName":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v67, v13

    const/16 v53, 0x4

    const/16 v47, 0x1

    .line 672
    invoke-interface {v2, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "staticLibName":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-interface {v2, v8, v11, v13}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 676
    .local v11, "staticLibVersion":I
    const/4 v13, 0x0

    invoke-interface {v2, v8, v14, v13}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 678
    .local v14, "staticLibVersionMajor":I
    if-eqz v3, :cond_14

    if-gez v11, :cond_13

    move-object/from16 v68, v9

    move-object/from16 v49, v10

    goto :goto_8

    .line 682
    :cond_13
    new-instance v7, Landroid/content/pm/SharedLibraryInfo;

    .line 683
    move-object v13, v9

    move-object/from16 v49, v10

    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v10    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .local v13, "usesStaticLibrariesVersions":[J
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    invoke-static {v14, v11}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v9

    move-object/from16 v68, v13

    const/4 v13, 0x2

    .end local v13    # "usesStaticLibrariesVersions":[J
    .local v68, "usesStaticLibrariesVersions":[J
    invoke-direct {v7, v3, v9, v10, v13}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JI)V

    .line 682
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    move-object/from16 v10, v39

    move/from16 v7, v50

    move-object/from16 v9, v68

    move-object/from16 v68, v4

    goto/16 :goto_e

    .line 678
    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v68    # "usesStaticLibrariesVersions":[J
    .restart local v9    # "usesStaticLibrariesVersions":[J
    .restart local v10    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    :cond_14
    move-object/from16 v68, v9

    move-object/from16 v49, v10

    .line 679
    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v10    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v68    # "usesStaticLibrariesVersions":[J
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad static-library declaration name: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 651
    .end local v3    # "staticLibName":Ljava/lang/String;
    .end local v11    # "staticLibVersion":I
    .end local v14    # "staticLibVersionMajor":I
    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v68    # "usesStaticLibrariesVersions":[J
    .restart local v9    # "usesStaticLibrariesVersions":[J
    .restart local v10    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v68, v9

    move-object/from16 v49, v10

    move-object/from16 v67, v13

    const/4 v13, 0x2

    const/16 v53, 0x4

    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v10    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v68    # "usesStaticLibrariesVersions":[J
    const/16 v43, 0x1

    .line 654
    invoke-interface {v2, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "sdkLibName":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-interface {v2, v8, v14, v9}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    .line 658
    .local v10, "sdkLibVersionMajor":I
    if-eqz v3, :cond_16

    if-gez v10, :cond_15

    goto :goto_9

    .line 664
    :cond_15
    new-instance v7, Landroid/content/pm/SharedLibraryInfo;

    int-to-long v13, v10

    const/4 v9, 0x3

    invoke-direct {v7, v3, v13, v14, v9}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    move-object/from16 v10, v39

    move/from16 v7, v50

    move-object/from16 v9, v68

    move-object/from16 v68, v4

    goto/16 :goto_e

    .line 659
    :cond_16
    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad sdk-library declaration name: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x6c

    invoke-interface {v1, v7, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 601
    .end local v3    # "sdkLibName":Ljava/lang/String;
    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v68    # "usesStaticLibrariesVersions":[J
    .restart local v9    # "usesStaticLibrariesVersions":[J
    .local v10, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    :pswitch_4
    move-object/from16 v68, v9

    move-object/from16 v49, v10

    move-object/from16 v67, v13

    const/4 v9, 0x3

    const/16 v53, 0x4

    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v10    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v68    # "usesStaticLibrariesVersions":[J
    invoke-interface {v2, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 603
    .local v10, "usesStaticLibName":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-interface {v2, v8, v11, v13}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    int-to-long v13, v11

    .line 605
    .local v13, "usesStaticLibVersion":J
    invoke-interface {v2, v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "usesStaticLibCertDigest":Ljava/lang/String;
    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Ljava/lang/String;->isBlank()Z

    move-result v11

    if-nez v11, :cond_1a

    cmp-long v11, v13, v45

    if-ltz v11, :cond_1a

    if-nez v3, :cond_17

    move-object/from16 v11, v68

    move-object/from16 v68, v4

    goto/16 :goto_a

    .line 619
    :cond_17
    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 620
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uses-sdk-library declaration. Depending on multiple versions of static library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x6c

    invoke-interface {v1, v7, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 627
    :cond_18
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    move-object/from16 v11, v68

    const/4 v7, 0x1

    .end local v68    # "usesStaticLibrariesVersions":[J
    .local v11, "usesStaticLibrariesVersions":[J
    invoke-static {v11, v13, v14, v7}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v11

    .line 632
    invoke-static {v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    nop

    .line 635
    invoke-static {v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 636
    .local v7, "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v45

    if-eqz v45, :cond_19

    .line 637
    invoke-interface {v1, v7}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 639
    :cond_19
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v9, v45

    check-cast v9, [Ljava/lang/String;

    .line 640
    .local v9, "additionalCertSha256Digests":[Ljava/lang/String;
    move-object/from16 v45, v3

    .end local v3    # "usesStaticLibCertDigest":Ljava/lang/String;
    .local v45, "usesStaticLibCertDigest":Ljava/lang/String;
    array-length v3, v9

    move/from16 v46, v3

    const/16 v41, 0x1

    add-int/lit8 v3, v46, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 642
    .local v3, "certSha256Digests":[Ljava/lang/String;
    move-object/from16 v68, v4

    const/4 v4, 0x0

    .end local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v68, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    aput-object v45, v3, v4

    .line 643
    move-object/from16 v46, v7

    .end local v7    # "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    .local v46, "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    array-length v7, v9

    move-object/from16 v69, v11

    move/from16 v11, v41

    .end local v11    # "usesStaticLibrariesVersions":[J
    .local v69, "usesStaticLibrariesVersions":[J
    invoke-static {v9, v4, v3, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    const-class v4, [Ljava/lang/String;

    move-object/from16 v7, v49

    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .local v7, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    invoke-static {v4, v7, v3, v11}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    .line 649
    .end local v7    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .local v4, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    move-object/from16 v49, v4

    move-object/from16 v10, v39

    move/from16 v7, v50

    move-object/from16 v9, v69

    goto/16 :goto_e

    .line 608
    .end local v9    # "additionalCertSha256Digests":[Ljava/lang/String;
    .end local v45    # "usesStaticLibCertDigest":Ljava/lang/String;
    .end local v46    # "certResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<[Ljava/lang/String;>;"
    .end local v69    # "usesStaticLibrariesVersions":[J
    .local v3, "usesStaticLibCertDigest":Ljava/lang/String;
    .local v4, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .local v68, "usesStaticLibrariesVersions":[J
    :cond_1a
    move-object/from16 v11, v68

    move-object/from16 v68, v4

    .line 611
    .end local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v11    # "usesStaticLibrariesVersions":[J
    .local v68, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad uses-static-library declaration name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " certDigest: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, -0x6c

    invoke-interface {v1, v7, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 548
    .end local v3    # "usesStaticLibCertDigest":Ljava/lang/String;
    .end local v11    # "usesStaticLibrariesVersions":[J
    .end local v13    # "usesStaticLibVersion":J
    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v9, "usesStaticLibrariesVersions":[J
    .local v10, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    :pswitch_5
    move-object/from16 v68, v4

    move-object v11, v9

    move-object/from16 v49, v10

    move-object/from16 v67, v13

    const/16 v53, 0x4

    .end local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v10    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v11    # "usesStaticLibrariesVersions":[J
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v2, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "usesSdkLibName":Ljava/lang/String;
    invoke-interface {v2, v8, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 555
    .local v9, "usesSdkLibVersionMajorString":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-static {v9, v13}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v10

    int-to-long v13, v10

    .line 557
    .local v13, "usesSdkLibVersionMajor":J
    invoke-interface {v2, v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "usesSdkCertDigest":Ljava/lang/String;
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Ljava/lang/String;->isBlank()Z

    move-result v10

    if-nez v10, :cond_1e

    cmp-long v10, v13, v45

    if-gez v10, :cond_1b

    move-object/from16 v45, v9

    move-object/from16 v10, v39

    goto :goto_c

    .line 569
    :cond_1b
    move-object/from16 v10, v39

    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uses-sdk-library declaration. Depending on multiple versions of SDK library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x6c

    invoke-interface {v1, v7, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 577
    :cond_1c
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    const/4 v7, 0x1

    invoke-static {v0, v13, v14, v7}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v39

    .line 582
    .end local v0    # "usesSdkLibrariesVersionsMajor":[J
    .local v39, "usesSdkLibrariesVersionsMajor":[J
    invoke-static {v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .end local v3    # "usesSdkCertDigest":Ljava/lang/String;
    .local v0, "usesSdkCertDigest":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 586
    const-string v7, "debug.pm.uses_sdk_library_default_cert_digest"

    invoke-static {v7, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 590
    .end local v0    # "usesSdkCertDigest":Ljava/lang/String;
    .restart local v3    # "usesSdkCertDigest":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v3, v7}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    move-object v0, v3

    goto :goto_b

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, ""

    move-object v0, v3

    .line 596
    .end local v3    # "usesSdkCertDigest":Ljava/lang/String;
    .local v0, "usesSdkCertDigest":Ljava/lang/String;
    :cond_1d
    :goto_b
    const-class v3, [Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    move-object/from16 v45, v9

    const/4 v9, 0x1

    .end local v9    # "usesSdkLibVersionMajorString":Ljava/lang/String;
    .local v45, "usesSdkLibVersionMajorString":Ljava/lang/String;
    invoke-static {v3, v5, v7, v9}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [[Ljava/lang/String;

    .line 599
    move-object v9, v11

    move-object/from16 v0, v39

    move/from16 v7, v50

    goto :goto_e

    .line 560
    .end local v10    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v45    # "usesSdkLibVersionMajorString":Ljava/lang/String;
    .local v0, "usesSdkLibrariesVersionsMajor":[J
    .restart local v3    # "usesSdkCertDigest":Ljava/lang/String;
    .restart local v9    # "usesSdkLibVersionMajorString":Ljava/lang/String;
    .local v39, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    move-object/from16 v45, v9

    move-object/from16 v10, v39

    .line 562
    .end local v9    # "usesSdkLibVersionMajorString":Ljava/lang/String;
    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v45    # "usesSdkLibVersionMajorString":Ljava/lang/String;
    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad uses-sdk-library declaration name: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, -0x6c

    invoke-interface {v1, v7, v6}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    return-object v6

    .line 544
    .end local v3    # "usesSdkCertDigest":Ljava/lang/String;
    .end local v11    # "usesStaticLibrariesVersions":[J
    .end local v13    # "usesSdkLibVersionMajor":J
    .end local v45    # "usesSdkLibVersionMajorString":Ljava/lang/String;
    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v9, "usesStaticLibrariesVersions":[J
    .local v10, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6
    move-object/from16 v68, v4

    move-object v11, v9

    move-object/from16 v49, v10

    move-object/from16 v67, v13

    move-object/from16 v10, v39

    const/16 v53, 0x4

    .end local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "usesStaticLibrariesVersions":[J
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-static {v2, v15}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isDeviceAdminReceiver(Landroid/content/res/XmlResourceParser;Z)Z

    move-result v3

    or-int v36, v36, v3

    .line 546
    move/from16 v7, v50

    goto :goto_e

    .line 540
    .end local v11    # "usesStaticLibrariesVersions":[J
    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v9    # "usesStaticLibrariesVersions":[J
    .local v10, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    move-object/from16 v68, v4

    move-object v11, v9

    move-object/from16 v49, v10

    move-object/from16 v67, v13

    move-object/from16 v10, v39

    const/16 v53, 0x4

    .end local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "usesStaticLibrariesVersions":[J
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const-string/jumbo v3, "shell"

    move/from16 v4, v50

    .end local v50    # "profilableByShell":Z
    .local v4, "profilableByShell":Z
    invoke-interface {v2, v8, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 542
    .end local v4    # "profilableByShell":Z
    .local v7, "profilableByShell":Z
    goto :goto_e

    .line 721
    .end local v7    # "profilableByShell":Z
    .restart local v4    # "profilableByShell":Z
    :goto_d
    move v7, v4

    move-object v9, v11

    .end local v4    # "profilableByShell":Z
    .end local v11    # "usesStaticLibrariesVersions":[J
    .restart local v7    # "profilableByShell":Z
    .restart local v9    # "usesStaticLibrariesVersions":[J
    :goto_e
    move-object/from16 v39, v10

    move-object/from16 v10, v49

    move-object/from16 v11, v65

    move/from16 v14, v66

    move-object/from16 v13, v67

    move-object/from16 v4, v68

    goto/16 :goto_3

    .line 529
    .end local v26    # "innerType":I
    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v66    # "innerDepth":I
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v10, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .local v11, "innerType":I
    .local v14, "innerDepth":I
    .restart local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1f
    move-object/from16 v68, v4

    move v4, v7

    move-object/from16 v49, v10

    move/from16 v26, v11

    move-object/from16 v67, v13

    move/from16 v66, v14

    move-object/from16 v10, v39

    const/16 v53, 0x4

    move-object v11, v9

    .line 527
    .end local v7    # "profilableByShell":Z
    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v14    # "innerDepth":I
    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "profilableByShell":Z
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "usesStaticLibrariesVersions":[J
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v66    # "innerDepth":I
    .restart local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_f
    move v7, v4

    move-object/from16 v39, v10

    move-object v9, v11

    move-object/from16 v10, v49

    move-object/from16 v11, v65

    move/from16 v14, v66

    move-object/from16 v13, v67

    move-object/from16 v4, v68

    goto/16 :goto_3

    .end local v11    # "usesStaticLibrariesVersions":[J
    .end local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .end local v66    # "innerDepth":I
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v7    # "profilableByShell":Z
    .restart local v9    # "usesStaticLibrariesVersions":[J
    .local v10, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v14    # "innerDepth":I
    .restart local v26    # "innerType":I
    .restart local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_20
    move-object/from16 v68, v4

    move v4, v7

    move-object v11, v9

    move-object/from16 v49, v10

    move/from16 v66, v14

    move-object/from16 v10, v39

    .line 723
    .end local v7    # "profilableByShell":Z
    .end local v9    # "usesStaticLibrariesVersions":[J
    .end local v14    # "innerDepth":I
    .end local v15    # "hasBindDeviceAdminPermission":Z
    .end local v26    # "innerType":I
    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v60    # "permission":Ljava/lang/String;
    .local v4, "profilableByShell":Z
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "usesStaticLibrariesVersions":[J
    .restart local v49    # "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    .restart local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_10
    move-object/from16 v45, v0

    move/from16 v26, v4

    move-object/from16 v46, v5

    move-object/from16 v39, v10

    move/from16 v14, v35

    move-object/from16 v15, v44

    move-object/from16 v50, v49

    move/from16 v6, v57

    move-object/from16 v22, v58

    move-object/from16 v7, v61

    move-object/from16 v5, v62

    move-object/from16 v9, v63

    move-object/from16 v10, v64

    move-object/from16 v4, v68

    const/4 v13, 0x2

    const/16 v41, 0x1

    move-object/from16 v49, v11

    move-object/from16 v11, v65

    goto/16 :goto_0

    .end local v0    # "usesSdkLibrariesVersionsMajor":[J
    .end local v58    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v59    # "type":I
    .end local v61    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v62    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v63    # "targetPackage":Ljava/lang/String;
    .end local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v5, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v9, "targetPackage":Ljava/lang/String;
    .local v10, "requiredSystemPropertyName":Ljava/lang/String;
    .local v11, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v14, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v15, "type":I
    .local v26, "profilableByShell":Z
    .restart local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v45, "usesSdkLibrariesVersionsMajor":[J
    .local v46, "usesSdkLibrariesCertDigests":[[Ljava/lang/String;
    .local v49, "usesStaticLibrariesVersions":[J
    .local v50, "usesStaticLibrariesCertDigests":[[Ljava/lang/String;
    :cond_21
    move-object/from16 v68, v4

    move-object/from16 v62, v5

    move-object/from16 v61, v7

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move-object/from16 v65, v11

    move-object v0, v13

    move-object/from16 v58, v14

    move/from16 v59, v15

    move-object/from16 v10, v39

    .end local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v9    # "targetPackage":Ljava/lang/String;
    .end local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v14    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v15    # "type":I
    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v58    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v59    # "type":I
    .restart local v61    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v62    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v63    # "targetPackage":Ljava/lang/String;
    .restart local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .restart local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    .restart local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const-string/jumbo v3, "overlay"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 724
    const-string/jumbo v0, "requiredSystemPropertyName"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    .end local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .local v0, "requiredSystemPropertyName":Ljava/lang/String;
    const-string/jumbo v3, "requiredSystemPropertyValue"

    invoke-interface {v2, v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 728
    .end local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    .restart local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    const-string/jumbo v3, "targetPackage"

    invoke-interface {v2, v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 729
    .end local v63    # "targetPackage":Ljava/lang/String;
    .restart local v9    # "targetPackage":Ljava/lang/String;
    const-string/jumbo v3, "isStatic"

    const/4 v14, 0x0

    invoke-interface {v2, v8, v3, v14}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v33

    .line 731
    const-string/jumbo v3, "priority"

    invoke-interface {v2, v8, v3, v14}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v34

    move-object/from16 v39, v10

    move/from16 v14, v35

    move-object/from16 v15, v44

    move/from16 v6, v57

    move-object/from16 v22, v58

    move-object/from16 v7, v61

    move-object/from16 v5, v62

    move-object/from16 v4, v68

    const/4 v13, 0x2

    const/16 v41, 0x1

    move-object v10, v0

    goto/16 :goto_0

    .line 732
    .end local v0    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v9    # "targetPackage":Ljava/lang/String;
    .end local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .restart local v63    # "targetPackage":Ljava/lang/String;
    .restart local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .restart local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    :cond_22
    const/4 v14, 0x0

    const-string/jumbo v3, "uses-split"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 733
    if-eqz v16, :cond_23

    .line 734
    const-string v3, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move/from16 v13, p4

    const/16 v41, 0x1

    goto/16 :goto_14

    .line 738
    :cond_23
    invoke-interface {v2, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 739
    if-nez v16, :cond_24

    .line 740
    const-string v0, "<uses-split> tag requires \'android:name\' attribute"

    const/16 v7, -0x6c

    invoke-interface {v1, v7, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 739
    :cond_24
    move-object/from16 v39, v10

    move/from16 v14, v35

    move-object/from16 v15, v44

    move/from16 v6, v57

    move-object/from16 v22, v58

    move-object/from16 v7, v61

    move-object/from16 v5, v62

    move-object/from16 v9, v63

    move-object/from16 v10, v64

    move-object/from16 v11, v65

    move-object/from16 v4, v68

    const/4 v13, 0x2

    const/16 v41, 0x1

    goto/16 :goto_0

    .line 743
    :cond_25
    const-string/jumbo v0, "uses-sdk"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 745
    const-string/jumbo v0, "minSdkVersion"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    .local v3, "minSdkVersionString":Ljava/lang/String;
    const-string/jumbo v0, "targetSdkVersion"

    invoke-interface {v2, v8, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 750
    .local v4, "targetSdkVersionString":Ljava/lang/String;
    const/4 v5, 0x1

    .line 751
    .local v5, "minVer":I
    const/4 v6, 0x0

    .line 752
    .local v6, "minCode":Ljava/lang/String;
    const/4 v7, 0x0

    .line 753
    .local v7, "minAssigned":Z
    const/4 v9, 0x0

    .line 754
    .local v9, "targetVer":I
    const/4 v11, 0x0

    .line 756
    .local v11, "targetCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 758
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v0

    .line 759
    const/4 v7, 0x1

    .line 763
    const/16 v41, 0x1

    goto :goto_11

    .line 760
    :catch_1
    move-exception v0

    .line 761
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    move-object v6, v3

    .line 762
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/16 v41, 0x1

    xor-int/lit8 v13, v13, 0x1

    move v7, v13

    goto :goto_11

    .line 756
    .end local v0    # "ignored":Ljava/lang/NumberFormatException;
    :cond_26
    const/16 v41, 0x1

    .line 766
    :goto_11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 768
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v9, v0

    .line 774
    :cond_27
    :goto_12
    goto :goto_13

    .line 769
    :catch_2
    move-exception v0

    .line 770
    .restart local v0    # "ignored":Ljava/lang/NumberFormatException;
    move-object v11, v4

    .line 771
    if-nez v7, :cond_27

    .line 772
    move-object v6, v11

    goto :goto_12

    .line 776
    .end local v0    # "ignored":Ljava/lang/NumberFormatException;
    :cond_28
    move v9, v5

    .line 777
    move-object v11, v6

    .line 780
    :goto_13
    const/4 v0, 0x0

    .line 781
    .local v0, "allowUnknownCodenames":Z
    move/from16 v13, p4

    and-int/lit16 v15, v13, 0x200

    if-eqz v15, :cond_29

    .line 782
    const/4 v0, 0x1

    .line 785
    :cond_29
    sget-object v15, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v9, v11, v15, v1, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v15

    .line 788
    .local v15, "targetResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 789
    invoke-interface {v1, v15}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    return-object v8

    .line 791
    :cond_2a
    invoke-interface {v15}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 793
    sget v14, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_VERSION:I

    move/from16 v22, v0

    .end local v0    # "allowUnknownCodenames":Z
    .local v22, "allowUnknownCodenames":Z
    sget-object v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v5, v6, v14, v0, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 795
    .local v0, "minResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 796
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    return-object v8

    .line 798
    :cond_2b
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 799
    .end local v0    # "minResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .end local v3    # "minSdkVersionString":Ljava/lang/String;
    .end local v4    # "targetSdkVersionString":Ljava/lang/String;
    .end local v5    # "minVer":I
    .end local v6    # "minCode":Ljava/lang/String;
    .end local v7    # "minAssigned":Z
    .end local v9    # "targetVer":I
    .end local v11    # "targetCode":Ljava/lang/String;
    .end local v15    # "targetResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/lang/Integer;>;"
    .end local v22    # "allowUnknownCodenames":Z
    move-object/from16 v39, v10

    move/from16 v14, v35

    move-object/from16 v15, v44

    move/from16 v6, v57

    move-object/from16 v22, v58

    move-object/from16 v7, v61

    move-object/from16 v5, v62

    move-object/from16 v9, v63

    move-object/from16 v10, v64

    move-object/from16 v11, v65

    move-object/from16 v4, v68

    const/4 v13, 0x2

    goto/16 :goto_0

    .line 743
    :cond_2c
    move/from16 v13, p4

    const/16 v41, 0x1

    goto :goto_14

    .line 489
    .end local v57    # "searchDepth":I
    .end local v58    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v59    # "type":I
    .end local v61    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v62    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v63    # "targetPackage":Ljava/lang/String;
    .end local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v5, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "searchDepth":I
    .local v7, "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v9, "targetPackage":Ljava/lang/String;
    .local v10, "requiredSystemPropertyName":Ljava/lang/String;
    .local v11, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v15, "type":I
    .local v22, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2d
    move/from16 v13, p4

    move-object/from16 v68, v4

    move-object/from16 v62, v5

    move/from16 v57, v6

    move-object/from16 v61, v7

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move-object/from16 v65, v11

    move/from16 v59, v15

    move-object/from16 v58, v22

    move-object/from16 v10, v39

    const/16 v41, 0x1

    .line 487
    .end local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "searchDepth":I
    .end local v7    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v9    # "targetPackage":Ljava/lang/String;
    .end local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v22    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v57    # "searchDepth":I
    .restart local v58    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v61    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v62    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v63    # "targetPackage":Ljava/lang/String;
    .restart local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .restart local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    .restart local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_14
    move-object/from16 v39, v10

    move/from16 v14, v35

    move-object/from16 v15, v44

    move/from16 v6, v57

    move-object/from16 v22, v58

    move-object/from16 v7, v61

    move-object/from16 v5, v62

    move-object/from16 v9, v63

    move-object/from16 v10, v64

    move-object/from16 v11, v65

    move-object/from16 v4, v68

    const/4 v13, 0x2

    goto/16 :goto_0

    .end local v44    # "configForSplit":Ljava/lang/String;
    .end local v58    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v61    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v62    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v63    # "targetPackage":Ljava/lang/String;
    .end local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v5    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "searchDepth":I
    .restart local v7    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v9    # "targetPackage":Ljava/lang/String;
    .local v10, "requiredSystemPropertyName":Ljava/lang/String;
    .restart local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .local v15, "configForSplit":Ljava/lang/String;
    .restart local v22    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v57, "type":I
    :cond_2e
    move-object/from16 v68, v4

    move-object/from16 v62, v5

    move-object/from16 v61, v7

    move-object/from16 v63, v9

    move-object/from16 v64, v10

    move-object/from16 v65, v11

    move-object v0, v13

    move-object/from16 v44, v15

    move-object/from16 v58, v22

    move-object/from16 v10, v39

    move/from16 v59, v57

    move/from16 v13, p4

    move/from16 v57, v6

    .line 803
    .end local v4    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "searchDepth":I
    .end local v7    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v9    # "targetPackage":Ljava/lang/String;
    .end local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v15    # "configForSplit":Ljava/lang/String;
    .end local v22    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v39    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v10, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v44    # "configForSplit":Ljava/lang/String;
    .local v57, "searchDepth":I
    .restart local v58    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .restart local v59    # "type":I
    .restart local v61    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v62    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v63    # "targetPackage":Ljava/lang/String;
    .restart local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .restart local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    .restart local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_15
    and-int/lit16 v3, v13, 0x80

    if-nez v3, :cond_30

    .line 804
    move-object/from16 v3, v64

    move-object/from16 v11, v65

    .end local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    .local v3, "requiredSystemPropertyName":Ljava/lang/String;
    .restart local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    invoke-static {v3, v11}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping target and overlay pair "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v9, v63

    .end local v63    # "targetPackage":Ljava/lang/String;
    .restart local v9    # "targetPackage":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": overlay ignored due to required system property: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, "message":Ljava/lang/String;
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 804
    .end local v4    # "message":Ljava/lang/String;
    .end local v9    # "targetPackage":Ljava/lang/String;
    .restart local v63    # "targetPackage":Ljava/lang/String;
    :cond_2f
    move-object/from16 v5, p1

    move-object/from16 v9, v63

    .end local v63    # "targetPackage":Ljava/lang/String;
    .restart local v9    # "targetPackage":Ljava/lang/String;
    goto :goto_16

    .line 803
    .end local v3    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v9    # "targetPackage":Ljava/lang/String;
    .end local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .restart local v63    # "targetPackage":Ljava/lang/String;
    .restart local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .restart local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    :cond_30
    move-object/from16 v5, p1

    move-object/from16 v9, v63

    move-object/from16 v3, v64

    move-object/from16 v11, v65

    .line 813
    .end local v63    # "targetPackage":Ljava/lang/String;
    .end local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v65    # "requiredSystemPropertyValue":Ljava/lang/String;
    .restart local v3    # "requiredSystemPropertyName":Ljava/lang/String;
    .restart local v9    # "targetPackage":Ljava/lang/String;
    .restart local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    :goto_16
    move-object/from16 v15, v44

    move-object/from16 v44, v10

    .end local v10    # "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "configForSplit":Ljava/lang/String;
    .local v44, "usesSdkLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Landroid/content/pm/parsing/ApkLite;

    move-object/from16 v4, v62

    .end local v62    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v4, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v7, v61

    .end local v61    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v7    # "requiredSplitTypes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Set<Ljava/lang/String;>;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v8

    check-cast v40, Ljava/util/Set;

    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v8

    check-cast v41, Ljava/util/Set;

    move-object/from16 v23, p3

    move-object v13, v6

    move-object/from16 v48, v12

    move/from16 v39, v32

    move/from16 v14, v35

    move/from16 v42, v36

    move-object/from16 v22, v58

    move-object/from16 v53, v68

    move-object v12, v0

    move-object/from16 v35, v3

    move-object/from16 v32, v9

    move-object/from16 v36, v11

    move-object v11, v5

    .end local v3    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v9    # "targetPackage":Ljava/lang/String;
    .end local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v12    # "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v58    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .end local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v14, "isFeatureSplit":Z
    .restart local v22    # "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    .local v32, "targetPackage":Ljava/lang/String;
    .local v35, "requiredSystemPropertyName":Ljava/lang/String;
    .local v36, "requiredSystemPropertyValue":Ljava/lang/String;
    .local v39, "rollbackDataPolicy":I
    .local v42, "hasDeviceAdminReceiver":Z
    .local v48, "usesStaticLibraries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v53, "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-direct/range {v10 .. v54}, Landroid/content/pm/parsing/ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/SigningDetails;ZZZZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Set;ZZLjava/util/List;[J[[Ljava/lang/String;ZLjava/util/List;[J[[Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;I)V

    move-object/from16 v63, v32

    move-object/from16 v64, v35

    move-object/from16 v11, v36

    .end local v32    # "targetPackage":Ljava/lang/String;
    .end local v35    # "requiredSystemPropertyName":Ljava/lang/String;
    .end local v36    # "requiredSystemPropertyValue":Ljava/lang/String;
    .end local v53    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v11    # "requiredSystemPropertyValue":Ljava/lang/String;
    .restart local v63    # "targetPackage":Ljava/lang/String;
    .restart local v64    # "requiredSystemPropertyName":Ljava/lang/String;
    .restart local v68    # "declaredLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v1, v10}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b7c15d8 -> :sswitch_7
        -0x5aaa6a59 -> :sswitch_6
        -0x4140b4a3 -> :sswitch_5
        -0x3efb77a4 -> :sswitch_4
        -0x30341611 -> :sswitch_3
        0x88b87d -> :sswitch_2
        0x9e824bb -> :sswitch_1
        0xa9d2283 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 17
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "debugPathName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .line 362
    move-object/from16 v7, p2

    move/from16 v8, p4

    if-eqz v7, :cond_0

    move-object/from16 v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v9, v0

    .line 364
    .local v9, "apkPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 365
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 368
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    const/4 v0, 0x0

    const-string v10, "Failed to parse "

    if-eqz v7, :cond_1

    .line 369
    const/4 v3, 0x0

    move-object/from16 v11, p3

    :try_start_0
    invoke-static {v7, v11, v0, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v3

    goto :goto_1

    .line 370
    :cond_1
    move-object/from16 v11, p3

    invoke-static {v9}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    :goto_1
    move-object v12, v3

    .line 374
    .end local v2    # "apkAssets":Landroid/content/res/ApkAssets;
    .local v12, "apkAssets":Landroid/content/res/ApkAssets;
    nop

    .line 376
    :try_start_1
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v12, v2}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object v13, v2

    .line 379
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    and-int/lit8 v1, v8, 0x20

    if-eqz v1, :cond_5

    .line 380
    and-int/lit8 v1, v8, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v3, v0

    .line 381
    .local v3, "skipVerify":Z
    :try_start_2
    const-string v0, "collectCertificates"

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 383
    nop

    .line 385
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 384
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    :try_start_4
    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 v16, v3

    move-object v3, v1

    move/from16 v1, v16

    .end local v3    # "skipVerify":Z
    .local v1, "skipVerify":Z
    move-object v2, v0

    .line 388
    .local v2, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    :try_start_5
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 389
    invoke-interface {v3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 393
    :try_start_6
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 405
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    if-eqz v12, :cond_3

    .line 408
    :try_start_7
    invoke-virtual {v12}, Landroid/content/res/ApkAssets;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 410
    goto :goto_2

    .line 409
    :catchall_0
    move-exception v0

    .line 389
    :cond_3
    :goto_2
    return-object v4

    .line 391
    :cond_4
    :try_start_8
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 393
    .end local v2    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/SigningDetails;>;"
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 394
    nop

    .line 395
    .end local v1    # "skipVerify":Z
    move-object v1, v0

    goto :goto_4

    .line 393
    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "skipVerify":Z
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v1    # "skipVerify":Z
    .restart local v3    # "skipVerify":Z
    :catchall_2
    move-exception v0

    move/from16 v16, v3

    move-object v3, v1

    move/from16 v1, v16

    goto :goto_3

    :catchall_3
    move-exception v0

    move v1, v3

    move-object/from16 v3, p0

    .end local v3    # "skipVerify":Z
    .restart local v1    # "skipVerify":Z
    :goto_3
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 394
    nop

    .end local v9    # "apkPath":Ljava/lang/String;
    .end local v12    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .end local p1    # "apkFile":Ljava/io/File;
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "debugPathName":Ljava/lang/String;
    .end local p4    # "flags":I
    throw v0

    .line 405
    .end local v1    # "skipVerify":Z
    .restart local v9    # "apkPath":Ljava/lang/String;
    .restart local v12    # "apkAssets":Landroid/content/res/ApkAssets;
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "input":Landroid/content/pm/parsing/result/ParseInput;
    .restart local p1    # "apkFile":Ljava/io/File;
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "debugPathName":Ljava/lang/String;
    .restart local p4    # "flags":I
    :catchall_4
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_6

    .line 400
    :catch_0
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_7

    .line 396
    :cond_5
    move-object/from16 v3, p0

    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    move-object v1, v0

    .line 399
    .local v1, "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_4
    invoke-static {v3, v9, v13, v1, v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 405
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    if-eqz v12, :cond_6

    .line 408
    :try_start_a
    invoke-virtual {v12}, Landroid/content/res/ApkAssets;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 410
    goto :goto_5

    .line 409
    :catchall_5
    move-exception v0

    .line 399
    :cond_6
    :goto_5
    return-object v2

    .line 405
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :catchall_6
    move-exception v0

    :goto_6
    move-object v1, v0

    move-object v2, v12

    goto/16 :goto_b

    .line 400
    :catch_1
    move-exception v0

    :goto_7
    move-object v2, v12

    move-object v1, v13

    goto :goto_9

    .line 405
    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_7
    move-exception v0

    move-object/from16 v3, p0

    move-object v13, v1

    move-object v2, v12

    move-object v1, v0

    goto/16 :goto_b

    .line 400
    :catch_2
    move-exception v0

    move-object/from16 v3, p0

    move-object v2, v12

    goto :goto_9

    .line 405
    .end local v12    # "apkAssets":Landroid/content/res/ApkAssets;
    .local v2, "apkAssets":Landroid/content/res/ApkAssets;
    :catchall_8
    move-exception v0

    move-object/from16 v3, p0

    move-object v13, v1

    move-object v1, v0

    goto :goto_b

    .line 400
    :catch_3
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_9

    .line 371
    :catch_4
    move-exception v0

    move-object/from16 v3, p0

    move-object v4, v0

    .line 372
    .local v4, "e":Ljava/io/IOException;
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, -0x64

    invoke-interface {v3, v5, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 405
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    if-eqz v2, :cond_7

    .line 408
    :try_start_c
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 410
    goto :goto_8

    .line 409
    :catchall_9
    move-exception v0

    .line 372
    :cond_7
    :goto_8
    return-object v5

    .line 405
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_a
    move-exception v0

    move-object v13, v1

    move-object v1, v0

    goto :goto_b

    .line 400
    :catch_5
    move-exception v0

    :goto_9
    move-object v4, v0

    .line 401
    .local v4, "e":Ljava/lang/Exception;
    :try_start_d
    const-string v0, "ApkLiteParseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, -0x66

    invoke-interface {v3, v5, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 405
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    if-eqz v2, :cond_8

    .line 408
    :try_start_e
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    .line 410
    goto :goto_a

    .line 409
    :catchall_b
    move-exception v0

    .line 402
    :cond_8
    :goto_a
    return-object v5

    .line 405
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_b
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    if-eqz v2, :cond_9

    .line 408
    :try_start_f
    invoke-virtual {v2}, Landroid/content/res/ApkAssets;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 410
    goto :goto_c

    .line 409
    :catchall_c
    move-exception v0

    .line 413
    :cond_9
    :goto_c
    throw v1
.end method

.method public static parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 183
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 184
    .local v3, "files":[Ljava/io/File;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/16 v0, -0x64

    const-string v4, "No packages found in split"

    invoke-interface {v1, v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    array-length v0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    aget-object v0, v3, v5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    aget-object v0, v3, v5

    invoke-static {v1, v0, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 193
    :cond_1
    const/4 v4, 0x0

    .line 194
    .local v4, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 195
    .local v6, "versionCode":I
    const/4 v7, 0x0

    .line 197
    .local v7, "baseApk":Landroid/content/pm/parsing/ApkLite;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v8, v0

    .line 198
    .local v8, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;>;"
    const-string/jumbo v0, "parseApkLite"

    const-wide/32 v9, 0x40000

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 200
    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    if-ge v5, v0, :cond_8

    :try_start_1
    aget-object v11, v3, v5

    .line 201
    .local v11, "file":Ljava/io/File;
    invoke-static {v11}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 202
    move-wide/from16 v16, v9

    goto/16 :goto_2

    .line 205
    :cond_2
    invoke-static {v1, v11, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    .line 206
    .local v12, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_3

    .line 207
    :try_start_2
    invoke-interface {v1, v12}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 240
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 207
    return-object v0

    .line 210
    :cond_3
    :try_start_3
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/parsing/ApkLite;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    .local v13, "lite":Landroid/content/pm/parsing/ApkLite;
    const/16 v14, -0x65

    if-nez v4, :cond_4

    .line 214
    :try_start_4
    invoke-virtual {v13}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object v4, v15

    .line 215
    invoke-virtual {v13}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v16, v9

    move v6, v15

    .end local v6    # "versionCode":I
    .local v15, "versionCode":I
    goto :goto_1

    .line 217
    .end local v15    # "versionCode":I
    .restart local v6    # "versionCode":I
    :cond_4
    :try_start_5
    invoke-virtual {v13}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide/from16 v16, v9

    const-string v9, "; expected "

    const-string v10, " in "

    if-nez v15, :cond_5

    .line 218
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent package "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    invoke-virtual {v13}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-interface {v1, v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 240
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 218
    return-object v0

    .line 222
    :cond_5
    :try_start_7
    invoke-virtual {v13}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v15

    if-eq v6, v15, :cond_6

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent version "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    invoke-virtual {v13}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-interface {v1, v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 240
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 223
    return-object v0

    .line 230
    :cond_6
    :goto_1
    :try_start_8
    invoke-virtual {v13}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/parsing/ApkLite;

    .line 231
    .local v9, "prev":Landroid/content/pm/parsing/ApkLite;
    if-eqz v9, :cond_7

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Split name "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 233
    invoke-virtual {v13}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " defined more than once; most recent was "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", previous was "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    invoke-virtual {v9}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-interface {v1, v14, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 240
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 232
    return-object v0

    .line 200
    .end local v9    # "prev":Landroid/content/pm/parsing/ApkLite;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .end local v13    # "lite":Landroid/content/pm/parsing/ApkLite;
    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v9, v16

    goto/16 :goto_0

    .line 240
    :catchall_0
    move-exception v0

    move-wide/from16 v16, v9

    goto :goto_3

    .line 238
    :cond_8
    move-wide/from16 v16, v9

    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/ApkLite;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 240
    .end local v7    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .local v0, "baseApk":Landroid/content/pm/parsing/ApkLite;
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 241
    nop

    .line 242
    move-object/from16 v5, p1

    invoke-static {v1, v5, v0, v8}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    return-object v7

    .line 240
    .end local v0    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    .restart local v7    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v5, p1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v5, p1

    move-wide/from16 v16, v9

    :goto_4
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 241
    throw v0
.end method

.method public static parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 129
    move-object/from16 v1, p0

    const-string/jumbo v0, "parseApkLite"

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 131
    :try_start_0
    invoke-static/range {p0 .. p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 132
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 133
    return-object v4

    .line 136
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/ApkLite;

    move-object v8, v4

    .line 137
    .local v8, "baseApk":Landroid/content/pm/parsing/ApkLite;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "packagePath":Ljava/lang/String;
    new-instance v5, Landroid/content/pm/parsing/PackageLite;

    .line 139
    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v17}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 138
    invoke-interface {v1, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    return-object v4

    .line 145
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .end local v6    # "packagePath":Ljava/lang/String;
    .end local v8    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 146
    throw v0
.end method

.method public static parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 18
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageFd"    # Ljava/io/FileDescriptor;
    .param p2, "debugPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 154
    move-object/from16 v1, p0

    const-string/jumbo v0, "parseApkLite"

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 156
    :try_start_0
    invoke-static/range {p0 .. p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 158
    .local v0, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 159
    return-object v4

    .line 162
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/ApkLite;

    move-object v8, v4

    .line 163
    .local v8, "baseApk":Landroid/content/pm/parsing/ApkLite;
    move-object/from16 v6, p2

    .line 164
    .local v6, "packagePath":Ljava/lang/String;
    new-instance v5, Landroid/content/pm/parsing/PackageLite;

    .line 165
    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 168
    invoke-virtual {v8}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v17}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 164
    invoke-interface {v1, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 164
    return-object v4

    .line 171
    .end local v0    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    .end local v6    # "packagePath":Ljava/lang/String;
    .end local v8    # "baseApk":Landroid/content/pm/parsing/ApkLite;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    throw v0
.end method

.method public static parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 7
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 903
    nop

    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 907
    :cond_0
    const/16 v0, -0x6c

    if-eq v1, v2, :cond_1

    .line 908
    const-string v2, "No start tag found"

    invoke-interface {p0, v0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 911
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "manifest"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 912
    const-string v2, "No <manifest> tag"

    invoke-interface {p0, v0, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 916
    :cond_2
    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "packageName":Ljava/lang/String;
    const-string v4, "android"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, -0x6a

    if-nez v4, :cond_3

    .line 918
    invoke-static {p0, v0, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 920
    .local v3, "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid manifest package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 922
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 921
    invoke-interface {p0, v5, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 926
    .end local v3    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_3
    const-string/jumbo v3, "split"

    invoke-interface {p1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 928
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 929
    const/4 v2, 0x0

    goto :goto_1

    .line 931
    :cond_4
    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v3}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 933
    .restart local v3    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest split: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 935
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 934
    invoke-interface {p0, v5, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 940
    .end local v3    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 941
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, v2

    .line 940
    :goto_2
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static parseRequiredSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 6
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/Pair<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, "requiredSplitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 951
    .local v1, "splitTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v2, "requiredSplitTypes"

    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 953
    invoke-static {p0, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->separateAndValidateSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 954
    .local v4, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 955
    invoke-interface {p0, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 957
    :cond_0
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Set;

    .line 960
    .end local v4    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_1
    const-string/jumbo v4, "splitTypes"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 961
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 962
    invoke-static {p0, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->separateAndValidateSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    .line 963
    .local v3, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 964
    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    return-object v4

    .line 966
    :cond_2
    invoke-interface {v3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/util/Set;

    .line 969
    .end local v3    # "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_3
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {p0, v3}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3
.end method

.method public static parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .locals 7
    .param p0, "attrs"    # Landroid/util/AttributeSet;

    .line 993
    const-string/jumbo v0, "name"

    const-string/jumbo v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "publicKey"

    invoke-interface {p0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "encodedPublicKey":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "ApkLiteParseUtils"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 1001
    :cond_0
    invoke-static {v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 1002
    .local v4, "publicKey":Ljava/security/PublicKey;
    if-nez v4, :cond_1

    .line 1003
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse verifier public key for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return-object v2

    .line 1007
    :cond_1
    new-instance v2, Landroid/content/pm/VerifierInfo;

    invoke-direct {v2, v0, v4}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v2

    .line 997
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    :cond_2
    :goto_0
    const-string/jumbo v4, "verifier package name was null; skipping"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-object v2
.end method

.method private static separateAndValidateSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 10
    .param p0, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .param p1, "values"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 974
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 975
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 976
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 979
    .local v6, "type":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {p0, v6, v3, v7}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7

    .line 981
    .local v7, "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid manifest split types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 983
    invoke-interface {v7}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 982
    const/16 v2, -0x6c

    invoke-interface {p0, v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1

    .line 985
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 986
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was defined multiple times"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ApkLiteParseUtils"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "nameResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 989
    :cond_2
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public static splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;
    .locals 3
    .param p0, "apk"    # Landroid/content/pm/parsing/ApkLite;

    .line 329
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {p0}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "base"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "split_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
