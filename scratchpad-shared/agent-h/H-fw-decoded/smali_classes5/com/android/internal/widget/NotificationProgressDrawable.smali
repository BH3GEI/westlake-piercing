.class public final Lcom/android/internal/widget/NotificationProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationProgressDrawable$State;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;,
        Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;,
        Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "NotifProgressDrawable"


# instance fields
.field private blacklist mAlpha:I

.field private blacklist mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

.field private final blacklist mFillPaint:Landroid/graphics/Paint;

.field private blacklist mMutated:Z

.field private final blacklist mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPointRectF:Landroid/graphics/RectF;

.field private final blacklist mSegRectF:Landroid/graphics/RectF;

.field private blacklist mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smscaleFromDensity(FII)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;->scaleFromDensity(FII)F

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 80
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    .line 81
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Lcom/android/internal/widget/NotificationProgressDrawable$State;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 702
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 703
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 705
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 706
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;Lcom/android/internal/widget/NotificationProgressDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationProgressDrawable;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    return-void
.end method

.method private blacklist applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 309
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 311
    .local v0, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawableSegments:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 314
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 315
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 318
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawablePoints:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 321
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 322
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method

.method private blacklist inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 279
    .local v0, "innerDepth":I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_5

    .line 280
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_0

    const/4 v2, 0x3

    if-eq v3, v2, :cond_5

    .line 282
    :cond_0
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 283
    goto :goto_0

    .line 286
    :cond_1
    if-le v4, v0, :cond_2

    .line 287
    goto :goto_0

    .line 290
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "segments"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 293
    sget-object v5, Lcom/android/internal/R$styleable;->NotificationProgressDrawableSegments:[I

    invoke-static {p1, p4, p3, v5}, Lcom/android/internal/widget/NotificationProgressDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 295
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 296
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 297
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_3
    const-string v5, "points"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 298
    sget-object v5, Lcom/android/internal/R$styleable;->NotificationProgressDrawablePoints:[I

    invoke-static {p1, p4, p3, v5}, Lcom/android/internal/widget/NotificationProgressDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 300
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Lcom/android/internal/widget/NotificationProgressDrawable;->updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 301
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 303
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad element under NotificationProgressDrawable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotifProgressDrawable"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 306
    .end local v4    # "depth":I
    :cond_5
    return-void
.end method

.method static blacklist resolveDensity(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    .line 366
    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 367
    .local v0, "densityDpi":I
    :goto_0
    if-nez v0, :cond_1

    const/16 v1, 0xa0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private static blacklist scaleFromDensity(FII)F
    .locals 2
    .param p0, "pixels"    # F
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 375
    int-to-float v0, p2

    mul-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private static blacklist scaleFromDensity(IIIZ)I
    .locals 3
    .param p0, "pixels"    # I
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I
    .param p3, "isSize"    # Z

    .line 391
    if-eqz p0, :cond_4

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    mul-int v0, p0, p2

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 396
    .local v0, "result":F
    if-nez p3, :cond_1

    .line 397
    float-to-int v1, v0

    return v1

    .line 400
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 401
    .local v1, "rounded":I
    if-eqz v1, :cond_2

    .line 402
    return v1

    .line 403
    :cond_2
    if-lez p0, :cond_3

    .line 404
    const/4 v2, 0x1

    return v2

    .line 406
    :cond_3
    const/4 v2, -0x1

    return v2

    .line 392
    .end local v0    # "result":F
    .end local v1    # "rounded":I
    :cond_4
    :goto_0
    return p0
.end method

.method private blacklist updateLocalState()V
    .locals 0

    .line 710
    return-void
.end method

.method private blacklist updatePointsFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 348
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 351
    .local v0, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    iget v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 354
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsPoints:[I

    .line 356
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 358
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 360
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 363
    return-void
.end method

.method private blacklist updateSegmentsFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 327
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 330
    .local v0, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    iget v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 333
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrsSegments:[I

    .line 335
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    .line 337
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    .line 339
    const/4 v1, 0x3

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    .line 342
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 345
    return-void
.end method

.method private blacklist updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 261
    .local v0, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    iget v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 264
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    .line 266
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    .line 268
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    .line 270
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 231
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 234
    .local v0, "state":Lcom/android/internal/widget/NotificationProgressDrawable$State;
    if-nez v0, :cond_0

    .line 235
    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->setDensity(I)V

    .line 240
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->NotificationProgressDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 243
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 244
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    .line 249
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 250
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist clearMutated()V
    .locals 1

    .line 559
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    .line 561
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v2, v2, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    .line 131
    .local v2, "pointRadius":F
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 132
    .local v3, "left":F
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 134
    .local v4, "centerY":F
    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 135
    .local v5, "numParts":I
    sub-float v6, v4, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 136
    .local v6, "pointTop":F
    add-float v7, v4, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 137
    .local v7, "pointBottom":F
    const/4 v8, 0x0

    .local v8, "iPart":I
    :goto_0
    if-ge v8, v5, :cond_4

    .line 138
    iget-object v9, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 139
    .local v9, "part":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    iget v10, v9, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    add-float/2addr v10, v3

    .line 140
    .local v10, "start":F
    iget v11, v9, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    add-float/2addr v11, v3

    .line 141
    .local v11, "end":F
    instance-of v12, v9, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    if-eqz v12, :cond_2

    move-object v12, v9

    check-cast v12, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    .line 143
    .local v12, "segment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    cmpl-float v13, v10, v11

    if-lez v13, :cond_0

    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v20, v5

    goto/16 :goto_2

    .line 145
    :cond_0
    invoke-static {v12}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->-$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;)Z

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v13, :cond_1

    iget-object v13, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v13, v13, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mFadedSegmentHeight:F

    div-float/2addr v13, v14

    goto :goto_1

    .line 146
    :cond_1
    iget-object v13, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v13, v13, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentHeight:F

    div-float/2addr v13, v14

    :goto_1
    nop

    .line 147
    .local v13, "radiusY":F
    iget-object v14, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v14, v14, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentCornerRadius:F

    .line 149
    .local v14, "cornerRadius":F
    iget-object v15, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    move/from16 v16, v2

    .end local v2    # "pointRadius":F
    .local v16, "pointRadius":F
    iget v2, v12, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mColor:I

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    sub-float v17, v4, v13

    move/from16 v18, v3

    .end local v3    # "left":F
    .local v18, "left":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    move/from16 v17, v4

    .end local v4    # "centerY":F
    .local v17, "centerY":F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float v19, v17, v13

    .line 152
    move/from16 v20, v5

    .end local v5    # "numParts":I
    .local v20, "numParts":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 151
    invoke-virtual {v2, v15, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 153
    iget-object v2, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mSegRectF:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v14, v14, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 154
    .end local v13    # "radiusY":F
    .end local v14    # "cornerRadius":F
    goto :goto_2

    .end local v12    # "segment":Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
    .end local v16    # "pointRadius":F
    .end local v17    # "centerY":F
    .end local v18    # "left":F
    .end local v20    # "numParts":I
    .restart local v2    # "pointRadius":F
    .restart local v3    # "left":F
    .restart local v4    # "centerY":F
    .restart local v5    # "numParts":I
    :cond_2
    move/from16 v16, v2

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v20, v5

    .end local v2    # "pointRadius":F
    .end local v3    # "left":F
    .end local v4    # "centerY":F
    .end local v5    # "numParts":I
    .restart local v16    # "pointRadius":F
    .restart local v17    # "centerY":F
    .restart local v18    # "left":F
    .restart local v20    # "numParts":I
    instance-of v2, v9, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    if-eqz v2, :cond_3

    move-object v2, v9

    check-cast v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;

    .line 157
    .local v2, "point":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    iget-object v3, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 158
    iget-object v3, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v3, v3, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectInset:F

    .line 159
    .local v3, "inset":F
    iget-object v4, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v4, v4, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRectCornerRadius:F

    .line 160
    .local v4, "cornerRadius":F
    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 162
    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v12, v2, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;->mColor:I

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v5, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mPointRectF:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/android/internal/widget/NotificationProgressDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    .end local v2    # "point":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePoint;
    .end local v3    # "inset":F
    .end local v4    # "cornerRadius":F
    .end local v9    # "part":Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
    .end local v10    # "start":F
    .end local v11    # "end":F
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    move/from16 v4, v17

    move/from16 v3, v18

    move/from16 v5, v20

    goto/16 :goto_0

    .line 167
    .end local v8    # "iPart":I
    .end local v16    # "pointRadius":F
    .end local v17    # "centerY":F
    .end local v18    # "left":F
    .end local v20    # "numParts":I
    .local v2, "pointRadius":F
    .local v3, "left":F
    .local v4, "centerY":F
    .restart local v5    # "numParts":I
    :cond_4
    return-void
.end method

.method public whitelist getAlpha()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 171
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mChangingConfigurations:I

    .line 692
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPointRadius()F
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mPointRadius:F

    return v0
.end method

.method public blacklist getSegPointGap()F
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegPointGap:F

    return v0
.end method

.method public blacklist getSegSegGap()F
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegSegGap:F

    return v0
.end method

.method public blacklist getSegmentMinWidth()F
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget v0, v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;->mSegmentMinWidth:F

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/widget/NotificationProgressDrawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationProgressDrawable$State;->setDensity(I)V

    .line 219
    sget-object v0, Lcom/android/internal/R$styleable;->NotificationProgressDrawable:[I

    invoke-static {p1, p4, p3, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 222
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/NotificationProgressDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 226
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 227
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 549
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 550
    new-instance v0, Lcom/android/internal/widget/NotificationProgressDrawable$State;

    iget-object v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/NotificationProgressDrawable$State;-><init>(Lcom/android/internal/widget/NotificationProgressDrawable$State;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mState:Lcom/android/internal/widget/NotificationProgressDrawable$State;

    .line 551
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->updateLocalState()V

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mMutated:Z

    .line 554
    :cond_0
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 204
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    invoke-interface {v0}, Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;->onDrawableBoundsChanged()V

    .line 209
    :cond_0
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 176
    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 177
    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mAlpha:I

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 180
    :cond_0
    return-void
.end method

.method public blacklist setBoundsChangeListener(Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    .line 199
    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mBoundsChangeListener:Lcom/android/internal/widget/NotificationProgressDrawable$BoundsChangeListener;

    .line 200
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 190
    return-void
.end method

.method public blacklist setParts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;>;"
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationProgressDrawable;->invalidateSelf()V

    .line 119
    return-void
.end method

.method public varargs blacklist setParts([Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;)V
    .locals 1
    .param p1, "parts"    # [Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationProgressDrawable;->setParts(Ljava/util/List;)V

    .line 126
    return-void
.end method
