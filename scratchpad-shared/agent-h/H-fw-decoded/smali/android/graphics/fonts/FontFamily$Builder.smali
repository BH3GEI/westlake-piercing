.class public final Landroid/graphics/fonts/FontFamily$Builder;
.super Ljava/lang/Object;
.source "FontFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamily$Builder$NoImagePreloadHolder;,
        Landroid/graphics/fonts/FontFamily$Builder$VariableFontFamilyType;
    }
.end annotation


# static fields
.field private static final TAG_ital:I = 0x6974616c

.field private static final TAG_wght:I = 0x77676874

.field public static final VARIABLE_FONT_FAMILY_TYPE_NONE:I = 0x0

.field public static final VARIABLE_FONT_FAMILY_TYPE_SINGLE_FONT_WGHT_ITAL:I = 0x2

.field public static final VARIABLE_FONT_FAMILY_TYPE_SINGLE_FONT_WGHT_ONLY:I = 0x1

.field public static final VARIABLE_FONT_FAMILY_TYPE_TWO_FONTS_WGHT:I = 0x3

.field public static final VARIABLE_FONT_FAMILY_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final mFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyles:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic -$$Nest$smnGetReleaseNativeFamily()J
    .locals 2

    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder;->nGetReleaseNativeFamily()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Landroid/graphics/fonts/Font;)V
    .locals 3
    .param p1, "font"    # Landroid/graphics/fonts/Font;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    .line 95
    const-string v0, "font can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    invoke-static {p1}, Landroid/graphics/fonts/FontFamily$Builder;->makeStyleIdentifier(Landroid/graphics/fonts/Font;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 97
    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public static analyzeAndResolveVariableType(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/fonts/Font;",
            ">;)I"
        }
    .end annotation

    .line 267
    .local p0, "fonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/Font;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 268
    return v1

    .line 271
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v3, 0x77676874

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 272
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    .line 273
    .local v0, "font":Landroid/graphics/fonts/Font;
    nop

    .line 274
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v6

    invoke-static {v4, v6}, Landroid/graphics/fonts/FontFileUtil;->getSupportedAxes(Ljava/nio/ByteBuffer;I)Ljava/util/Set;

    move-result-object v4

    .line 275
    .local v4, "supportedAxes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    const v1, 0x6974616c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    return v2

    .line 279
    :cond_1
    return v5

    .line 282
    :cond_2
    return v1

    .line 285
    .end local v0    # "font":Landroid/graphics/fonts/Font;
    .end local v4    # "supportedAxes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 286
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/Font;

    .line 287
    .local v2, "font":Landroid/graphics/fonts/Font;
    nop

    .line 288
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/fonts/FontFileUtil;->getSupportedAxes(Ljava/nio/ByteBuffer;I)Ljava/util/Set;

    move-result-object v6

    .line 289
    .local v6, "supportedAxes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 290
    return v1

    .line 285
    .end local v2    # "font":Landroid/graphics/fonts/Font;
    .end local v6    # "supportedAxes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/Font;

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    if-ne v0, v5, :cond_6

    move v0, v5

    goto :goto_1

    :cond_6
    move v0, v4

    .line 294
    .local v0, "italic1":Z
    :goto_1
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/Font;

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v2

    if-ne v2, v5, :cond_7

    move v2, v5

    goto :goto_2

    :cond_7
    move v2, v4

    .line 296
    .local v2, "italic2":Z
    :goto_2
    if-ne v0, v2, :cond_8

    .line 297
    return v1

    .line 299
    :cond_8
    if-eqz v0, :cond_9

    .line 301
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/Font;

    .line 302
    .local v1, "firstFont":Landroid/graphics/fonts/Font;
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/Font;

    invoke-virtual {p0, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p0, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 305
    .end local v1    # "firstFont":Landroid/graphics/fonts/Font;
    :cond_9
    const/4 v1, 0x3

    return v1
.end method

.method private static makeStyleIdentifier(Landroid/graphics/fonts/Font;)I
    .locals 2
    .param p0, "font"    # Landroid/graphics/fonts/Font;

    .line 195
    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static native nAddFont(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nBuild(JLjava/lang/String;IZZI)J
.end method

.method private static native nGetReleaseNativeFamily()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitBuilder()J
.end method


# virtual methods
.method public addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    .locals 4
    .param p1, "font"    # Landroid/graphics/fonts/Font;

    .line 115
    const-string v0, "font can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Landroid/graphics/fonts/FontFamily$Builder;->makeStyleIdentifier(Landroid/graphics/fonts/Font;)I

    move-result v0

    .line 117
    .local v0, "key":I
    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 120
    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mStyles:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 121
    iget-object v1, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-object p0

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public build()Landroid/graphics/fonts/FontFamily;
    .locals 6

    .line 173
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    return-object v1
.end method

.method public build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;
    .locals 7
    .param p1, "langTags"    # Ljava/lang/String;
    .param p2, "variant"    # I
    .param p3, "isCustomFallback"    # Z
    .param p4, "isDefaultFallback"    # Z
    .param p5, "variableFamilyType"    # I

    .line 183
    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder;->nInitBuilder()J

    move-result-wide v0

    .line 184
    .local v0, "builderPtr":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 185
    iget-object v3, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/Font;

    invoke-virtual {v3}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->nAddFont(JJ)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "langTags":Ljava/lang/String;
    .end local p2    # "variant":I
    .end local p3    # "isCustomFallback":Z
    .end local p4    # "isDefaultFallback":Z
    .end local p5    # "variableFamilyType":I
    .local v2, "langTags":Ljava/lang/String;
    .local v3, "variant":I
    .local v4, "isCustomFallback":Z
    .local v5, "isDefaultFallback":Z
    .local v6, "variableFamilyType":I
    invoke-static/range {v0 .. v6}, Landroid/graphics/fonts/FontFamily$Builder;->nBuild(JLjava/lang/String;IZZI)J

    move-result-wide p1

    .line 189
    .local p1, "ptr":J
    new-instance p3, Landroid/graphics/fonts/FontFamily;

    invoke-direct {p3, p1, p2}, Landroid/graphics/fonts/FontFamily;-><init>(J)V

    .line 190
    .local p3, "family":Landroid/graphics/fonts/FontFamily;
    invoke-static {}, Landroid/graphics/fonts/FontFamily$Builder$NoImagePreloadHolder;->-$$Nest$sfgetsFamilyRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object p4

    invoke-virtual {p4, p3, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 191
    return-object p3
.end method

.method public buildVariableFamily()Landroid/graphics/fonts/FontFamily;
    .locals 7

    .line 158
    iget-object v0, p0, Landroid/graphics/fonts/FontFamily$Builder;->mFonts:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/graphics/fonts/FontFamily$Builder;->analyzeAndResolveVariableType(Ljava/util/ArrayList;)I

    move-result v6

    .line 159
    .local v6, "variableFamilyType":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    return-object v0
.end method
