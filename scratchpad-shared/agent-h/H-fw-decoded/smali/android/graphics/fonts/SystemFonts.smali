.class public final Landroid/graphics/fonts/SystemFonts;
.super Ljava/lang/Object;
.source "SystemFonts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    }
.end annotation


# static fields
.field private static final FONTS_XML:Ljava/lang/String; = "/system/etc/font_fallback.xml"

.field private static final LEGACY_FONTS_XML:Ljava/lang/String; = "/system/etc/fonts.xml"

.field private static final LOCK:Ljava/lang/Object;

.field public static final OEM_FONT_DIR:Ljava/lang/String; = "/product/fonts/"

.field private static final OEM_XML:Ljava/lang/String; = "/product/etc/fonts_customization.xml"

.field public static final SYSTEM_FONT_DIR:Ljava/lang/String; = "/system/fonts/"

.field private static final TAG:Ljava/lang/String; = "SystemFonts"

.field private static sAvailableFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendNamedFamilyList(Landroid/text/FontConfig$NamedFamilyList;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 12
    .param p0, "namedFamilyList"    # Landroid/text/FontConfig$NamedFamilyList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$NamedFamilyList;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p1, "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local p2, "fallbackListMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "familyName":Ljava/lang/String;
    new-instance v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;-><init>(Landroid/graphics/fonts/SystemFonts-IA;)V

    .line 279
    .local v1, "familyListSet":Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    invoke-virtual {p0}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v3

    .line 280
    .local v3, "xmlFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 281
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$FontFamily;

    .line 282
    .local v5, "xmlFamily":Landroid/text/FontConfig$FontFamily;
    nop

    .line 283
    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    .line 284
    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v8

    .line 285
    invoke-static {v5, v2}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v9

    .line 282
    const/4 v10, 0x1

    move-object v11, p1

    .end local p1    # "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local v11, "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-static/range {v6 .. v11}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object p1

    .line 289
    .local p1, "family":Landroid/graphics/fonts/FontFamily;
    if-nez p1, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    iget-object v6, v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v6, v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    .end local v5    # "xmlFamily":Landroid/text/FontConfig$FontFamily;
    .end local p1    # "family":Landroid/graphics/fonts/FontFamily;
    add-int/lit8 v4, v4, 0x1

    move-object p1, v11

    goto :goto_0

    .line 295
    .end local v4    # "i":I
    .end local v11    # "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local p1, "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    :cond_1
    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
.end method

.method public static buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;
    .locals 1
    .param p0, "fontConfig"    # Landroid/text/FontConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0, v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;
    .locals 14
    .param p0, "fontConfig"    # Landroid/text/FontConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 389
    .local p1, "outBufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 390
    .local v0, "fallbackListMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;>;"
    nop

    .line 391
    invoke-virtual {p0}, Landroid/text/FontConfig;->getLocaleFallbackCustomizations()Ljava/util/List;

    move-result-object v1

    .line 393
    .local v1, "localeFallbacks":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Customization$LocaleFallback;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    .line 394
    .local v2, "namedFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 395
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$NamedFamilyList;

    .line 396
    .local v4, "namedFamilyList":Landroid/text/FontConfig$NamedFamilyList;
    invoke-static {v4, p1, v0}, Landroid/graphics/fonts/SystemFonts;->appendNamedFamilyList(Landroid/text/FontConfig$NamedFamilyList;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 394
    .end local v4    # "namedFamilyList":Landroid/text/FontConfig$NamedFamilyList;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 400
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v3, "customizations":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Customization$LocaleFallback;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    .line 402
    .local v4, "xmlFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 403
    .local v5, "seenCustomization":Landroid/util/SparseIntArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 404
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$FontFamily;

    .line 406
    .local v7, "xmlFamily":Landroid/text/FontConfig$FontFamily;
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 407
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_3

    .line 408
    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    if-eq v11, v9, :cond_1

    .line 409
    goto :goto_3

    .line 411
    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 412
    .local v9, "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    invoke-virtual {v7}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v11

    invoke-virtual {v9}, Landroid/text/FontConfig$Customization$LocaleFallback;->getScript()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/graphics/fonts/SystemFonts;->scriptMatch(Landroid/os/LocaleList;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 413
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v5, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    .end local v9    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 418
    .end local v8    # "j":I
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 419
    invoke-static {v7, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    goto :goto_7

    .line 421
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 422
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 423
    .restart local v9    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    invoke-virtual {v9}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v11

    if-nez v11, :cond_5

    .line 424
    invoke-virtual {v9}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v11

    invoke-static {v11, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 421
    .end local v9    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 428
    .end local v8    # "j":I
    :cond_6
    const/4 v8, 0x0

    .line 429
    .local v8, "isReplaced":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_8

    .line 430
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 431
    .local v11, "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 432
    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v12

    invoke-static {v12, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 434
    const/4 v8, 0x1

    .line 429
    .end local v11    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 437
    .end local v9    # "j":I
    :cond_8
    if-nez v8, :cond_9

    .line 438
    invoke-static {v7, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 440
    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_b

    .line 441
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 442
    .restart local v11    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v12

    if-ne v12, v10, :cond_a

    .line 443
    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v12

    invoke-static {v12, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 440
    .end local v11    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 403
    .end local v7    # "xmlFamily":Landroid/text/FontConfig$FontFamily;
    .end local v8    # "isReplaced":Z
    .end local v9    # "j":I
    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 451
    .end local v6    # "i":I
    :cond_c
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 452
    .local v6, "fallbackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 453
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 454
    .local v8, "fallbackName":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    iget-object v9, v9, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    .line 455
    .local v9, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamily;>;"
    const/4 v10, 0x0

    new-array v10, v10, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .end local v8    # "fallbackName":Ljava/lang/String;
    .end local v9    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamily;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 458
    .end local v7    # "i":I
    :cond_d
    return-object v6
.end method

.method public static buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0, "fontConfig"    # Landroid/text/FontConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 469
    .local p1, "fallbackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 470
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/graphics/Typeface;->initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    .line 471
    return-object v0
.end method

.method private static createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;
    .locals 9
    .param p1, "languageTags"    # Ljava/lang/String;
    .param p2, "variant"    # I
    .param p3, "varFamilyType"    # I
    .param p4, "isDefaultFallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/fonts/FontFamily;"
        }
    .end annotation

    .line 232
    .local p0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    .local p5, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    return-object v1

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, "b":Landroid/graphics/fonts/FontFamily$Builder;
    const/4 v2, 0x0

    move-object v3, v0

    .end local v0    # "b":Landroid/graphics/fonts/FontFamily$Builder;
    .local v2, "i":I
    .local v3, "b":Landroid/graphics/fonts/FontFamily$Builder;
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 238
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/text/FontConfig$Font;

    .line 239
    .local v4, "fontConfig":Landroid/text/FontConfig$Font;
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "fullPath":Ljava/lang/String;
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 241
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_3

    .line 242
    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    goto :goto_2

    .line 245
    :cond_1
    invoke-static {v5}, Landroid/graphics/fonts/SystemFonts;->mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 246
    invoke-interface {p5, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    if-nez v0, :cond_2

    .line 248
    goto :goto_2

    .line 247
    :cond_2
    move-object v6, v0

    goto :goto_1

    .line 241
    :cond_3
    move-object v6, v0

    .line 254
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :goto_1
    :try_start_0
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v7, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v0, "font":Landroid/graphics/fonts/Font;
    nop

    .line 264
    if-nez v3, :cond_4

    .line 265
    new-instance v7, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v7, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v3, v7

    .end local v3    # "b":Landroid/graphics/fonts/FontFamily$Builder;
    .local v7, "b":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_2

    .line 267
    .end local v7    # "b":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "b":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_4
    invoke-virtual {v3, v0}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 237
    .end local v0    # "font":Landroid/graphics/fonts/Font;
    .end local v4    # "fontConfig":Landroid/text/FontConfig$Font;
    .end local v5    # "fullPath":Ljava/lang/String;
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .restart local v4    # "fontConfig":Landroid/text/FontConfig$Font;
    .restart local v5    # "fullPath":Ljava/lang/String;
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    .end local v4    # "fontConfig":Landroid/text/FontConfig$Font;
    .end local v5    # "fullPath":Ljava/lang/String;
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5
    if-nez v3, :cond_6

    move-object v4, p1

    move v5, p2

    move v8, p3

    move v7, p4

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move v8, p3

    move v7, p4

    .end local p1    # "languageTags":Ljava/lang/String;
    .end local p2    # "variant":I
    .end local p3    # "varFamilyType":I
    .end local p4    # "isDefaultFallback":Z
    .local v4, "languageTags":Ljava/lang/String;
    .local v5, "variant":I
    .local v7, "isDefaultFallback":Z
    .local v8, "varFamilyType":I
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method public static getAvailableFonts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 78
    invoke-static {}, Landroid/graphics/fonts/Font;->getAvailableFonts()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    .line 80
    :cond_0
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;
    .locals 8
    .param p1, "lastModifiedDate"    # J
    .param p3, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .line 309
    .local p0, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const-string v0, "/system/etc/font_fallback.xml"

    const-string v1, "/system/fonts/"

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    .end local p0    # "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .end local p1    # "lastModifiedDate":J
    .end local p3    # "configVersion":I
    .local v4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local v5, "lastModifiedDate":J
    .local v7, "configVersion":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemFontConfigForTesting(Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .locals 8
    .param p0, "fontsXml"    # Ljava/lang/String;
    .param p2, "lastModifiedDate"    # J
    .param p4, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .line 325
    .local p1, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const-string v1, "/system/fonts/"

    move-object v0, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    .end local p0    # "fontsXml":Ljava/lang/String;
    .end local p1    # "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .end local p2    # "lastModifiedDate":J
    .end local p4    # "configVersion":I
    .local v0, "fontsXml":Ljava/lang/String;
    .local v4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local v5, "lastModifiedDate":J
    .local v7, "configVersion":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method static getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .locals 11
    .param p0, "fontsXml"    # Ljava/lang/String;
    .param p1, "systemFontDir"    # Ljava/lang/String;
    .param p2, "oemXml"    # Ljava/lang/String;
    .param p3, "productFontDir"    # Ljava/lang/String;
    .param p5, "lastModifiedDate"    # J
    .param p7, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .line 356
    .local p4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string v1, "SystemFonts"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading font config from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static/range {p0 .. p7}, Landroid/graphics/FontListParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Failed to parse the system font configuration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    new-instance v3, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 365
    return-object v3

    .line 359
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 360
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to open/read system font configurations."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    new-instance v3, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 361
    return-object v3
.end method

.method public static getSystemPreinstalledFontConfig()Landroid/text/FontConfig;
    .locals 8

    .line 334
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v0, "/system/etc/font_fallback.xml"

    const-string v1, "/system/fonts/"

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemPreinstalledFontConfigFromLegacyXml()Landroid/text/FontConfig;
    .locals 8

    .line 342
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v0, "/system/etc/fonts.xml"

    const-string v1, "/system/fonts/"

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method private static mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "fullPath"    # Ljava/lang/String;

    .line 94
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 95
    .local v1, "file":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v2, v0

    .line 96
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 97
    .local v6, "fontSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    return-object v0

    .line 94
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "fullPath":Ljava/lang/String;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    .end local v1    # "file":Ljava/io/FileInputStream;
    .restart local p0    # "fullPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .locals 12
    .param p0, "xmlFamily"    # Landroid/text/FontConfig$FontFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$FontFamily;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "fallbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "languageTags":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v3

    .line 174
    .local v3, "variant":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "defaultFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 179
    .local v0, "specificFallbackFonts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 180
    .local v7, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, "fallbackName":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 182
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_0
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 185
    .local v9, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    if-nez v9, :cond_1

    .line 186
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 187
    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_1
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v7    # "font":Landroid/text/FontConfig$Font;
    .end local v8    # "fallbackName":Ljava/lang/String;
    .end local v9    # "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    move-object v6, p2

    move-object p2, v1

    goto :goto_2

    .line 194
    :cond_3
    invoke-static {p0, v5}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v4

    .line 193
    const/4 v5, 0x0

    move-object v6, p2

    .end local p2    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local v6, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-static/range {v1 .. v6}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v5

    move-object p2, v1

    .end local v1    # "defaultFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    .local p2, "defaultFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    :goto_2
    move-object v7, v5

    .line 197
    .local v7, "defaultFamily":Landroid/graphics/fonts/FontFamily;
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_8

    .line 198
    invoke-virtual {p1, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 199
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    .line 200
    .local v10, "familyListSet":Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    .line 201
    .local v11, "identityHash":I
    iget-object v1, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v1, v11, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 202
    goto :goto_4

    .line 204
    :cond_4
    iget-object v1, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    const/4 v4, 0x1

    invoke-virtual {v1, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 206
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 207
    .local v1, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    if-nez v1, :cond_5

    .line 208
    if-eqz v7, :cond_7

    .line 209
    iget-object v4, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 212
    :cond_5
    nop

    .line 213
    invoke-static {p0, v9}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v4

    .line 212
    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    .line 214
    .local v4, "family":Landroid/graphics/fonts/FontFamily;
    if-eqz v4, :cond_6

    .line 215
    iget-object v5, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 216
    :cond_6
    if-eqz v7, :cond_7

    .line 217
    iget-object v5, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v1    # "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    .end local v4    # "family":Landroid/graphics/fonts/FontFamily;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "familyListSet":Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    .end local v11    # "identityHash":I
    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 223
    .end local v8    # "i":I
    :cond_8
    return-void
.end method

.method public static resetAvailableFonts()V
    .locals 2

    .line 88
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I
    .locals 10
    .param p0, "xmlFamily"    # Landroid/text/FontConfig$FontFamily;
    .param p1, "familyName"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "wghtCount":I
    const/4 v1, 0x0

    .line 110
    .local v1, "italCount":I
    const/4 v2, 0x0

    .line 111
    .local v2, "targetFonts":I
    const/4 v3, 0x0

    .line 113
    .local v3, "hasItalicFont":Z
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v4

    .line 114
    .local v4, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_6

    .line 115
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$Font;

    .line 117
    .local v6, "font":Landroid/text/FontConfig$Font;
    if-nez p1, :cond_0

    .line 118
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 119
    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 123
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getVarTypeAxes()I

    move-result v9

    .line 128
    .local v9, "varTypeAxes":I
    if-nez v9, :cond_2

    .line 130
    return v7

    .line 133
    :cond_2
    and-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_3

    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 137
    :cond_3
    and-int/lit8 v7, v9, 0x2

    if-eqz v7, :cond_4

    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 141
    :cond_4
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v7

    if-ne v7, v8, :cond_5

    .line 142
    const/4 v3, 0x1

    .line 144
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 114
    .end local v6    # "font":Landroid/text/FontConfig$Font;
    .end local v9    # "varTypeAxes":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    .end local v5    # "i":I
    :cond_6
    const/4 v5, 0x2

    if-nez v1, :cond_8

    .line 148
    if-ne v2, v8, :cond_7

    if-ne v0, v8, :cond_7

    .line 151
    return v8

    .line 152
    :cond_7
    if-ne v2, v5, :cond_9

    if-ne v0, v5, :cond_9

    if-eqz v3, :cond_9

    .line 156
    const/4 v5, 0x3

    return v5

    .line 158
    :cond_8
    if-ne v1, v8, :cond_9

    .line 160
    if-ne v0, v8, :cond_9

    if-ne v2, v8, :cond_9

    .line 161
    return v5

    .line 165
    :cond_9
    return v7
.end method

.method private static scriptMatch(Landroid/os/LocaleList;Ljava/lang/String;)Z
    .locals 8
    .param p0, "localeList"    # Landroid/os/LocaleList;
    .param p1, "targetScript"    # Ljava/lang/String;

    .line 475
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 478
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 479
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 480
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_1

    .line 481
    goto/16 :goto_1

    .line 483
    :cond_1
    invoke-static {v2}, Landroid/text/FontConfig;->resolveScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, "baseScript":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 485
    return v5

    .line 489
    :cond_2
    const-string v4, "Bopo"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Hanb"

    if-eqz v4, :cond_3

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 491
    return v5

    .line 492
    :cond_3
    const-string v4, "Hani"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "Jpan"

    if-eqz v4, :cond_5

    .line 493
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Hans"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 494
    const-string v4, "Hant"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Kore"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 495
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 498
    :cond_4
    return v5

    .line 500
    :cond_5
    const-string v4, "Hira"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Hrkt"

    if-nez v4, :cond_6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 501
    const-string v4, "Kana"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 502
    :cond_6
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    .line 478
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "baseScript":Ljava/lang/String;
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 505
    .restart local v2    # "locale":Ljava/util/Locale;
    .restart local v3    # "baseScript":Ljava/lang/String;
    :cond_8
    :goto_2
    return v5

    .line 509
    .end local v1    # "i":I
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "baseScript":Ljava/lang/String;
    :cond_9
    return v0

    .line 476
    :cond_a
    :goto_3
    return v0
.end method
