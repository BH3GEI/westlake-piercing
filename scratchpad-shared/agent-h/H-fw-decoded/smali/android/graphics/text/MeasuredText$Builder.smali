.class public final Landroid/graphics/text/MeasuredText$Builder;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/MeasuredText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/MeasuredText$Builder$HyphenationMode;
    }
.end annotation


# static fields
.field public static final HYPHENATION_MODE_FAST:I = 0x2

.field public static final HYPHENATION_MODE_NONE:I = 0x0

.field public static final HYPHENATION_MODE_NORMAL:I = 0x1

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mBottom:I

.field private mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mComputeBounds:Z

.field private mComputeHyphenation:Z

.field private mComputeLayout:Z

.field private mCurrentOffset:I

.field private mFastHyphenation:Z

.field private mHintMt:Landroid/graphics/text/MeasuredText;

.field private mNativePtr:J

.field private final mText:[C

.field private mTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 223
    const-class v0, Landroid/graphics/text/MeasuredText;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/text/MeasuredText;->-$$Nest$smnGetReleaseFunc()J

    move-result-wide v1

    .line 224
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/MeasuredText$Builder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/graphics/text/MeasuredText;)V
    .locals 2
    .param p1, "text"    # Landroid/graphics/text/MeasuredText;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 232
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    .line 233
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 234
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    .line 236
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    .line 237
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    .line 238
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 263
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmChars(Landroid/graphics/text/MeasuredText;)[C

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    .line 265
    invoke-static {}, Landroid/graphics/text/MeasuredText$Builder;->nInitBuilder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 266
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 271
    invoke-static {p1}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeLayout(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 272
    iput-object p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    .line 273
    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input MeasuredText must not be created with setComputeLayout(false)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "text"    # [C

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 232
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    .line 233
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 234
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    .line 236
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    .line 237
    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    .line 238
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 249
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iput-object p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    .line 251
    invoke-static {}, Landroid/graphics/text/MeasuredText$Builder;->nInitBuilder()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 252
    return-void
.end method

.method private ensureNativePtrNoReuse()V
    .locals 4

    .line 507
    iget-wide v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 510
    return-void

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder can not be reused."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nAddReplacementRun(JJIIF)V
.end method

.method private static native nAddStyleRun(JJIIZIIZ)V
.end method

.method private static native nBuildMeasuredText(JJ[CZZZZ)J
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nInitBuilder()J
.end method


# virtual methods
.method public appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;
    .locals 10
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "length"    # I
    .param p3, "width"    # F

    .line 347
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string/jumbo v3, "length can not be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 348
    iget v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    add-int v8, v2, p2

    .line 349
    .local v8, "end":I
    iget-object v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v2, v2

    if-gt v8, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "Replacement exceeds the text length"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 350
    iget-wide v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    move v9, p3

    .end local p3    # "width":F
    .local v9, "width":F
    invoke-static/range {v3 .. v9}, Landroid/graphics/text/MeasuredText$Builder;->nAddReplacementRun(JJIIF)V

    .line 351
    iput v8, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 352
    return-object p0
.end method

.method public appendStyleRun(Landroid/graphics/Paint;IZ)Landroid/graphics/text/MeasuredText$Builder;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "length"    # I
    .param p3, "isRtl"    # Z

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    return-object v0
.end method

.method public appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;
    .locals 13
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p3, "length"    # I
    .param p4, "isRtl"    # Z

    .line 312
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string/jumbo v3, "length can not be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 314
    iget v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    add-int v11, v2, p3

    .line 315
    .local v11, "end":I
    iget-object v2, p0, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v2, v2

    if-gt v11, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "Style exceeds the text length"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 316
    invoke-static {p2}, Landroid/graphics/text/LineBreakConfig;->getResolvedLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v7

    .line 317
    .local v7, "lbStyle":I
    invoke-static {p2}, Landroid/graphics/text/LineBreakConfig;->getResolvedLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I

    move-result v8

    .line 318
    .local v8, "lbWordStyle":I
    invoke-static {p2}, Landroid/graphics/text/LineBreakConfig;->getResolvedHyphenation(Landroid/graphics/text/LineBreakConfig;)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v9, v1

    goto :goto_2

    :cond_2
    move v9, v0

    .line 320
    .local v9, "hyphenation":Z
    :goto_2
    iget-wide v3, p0, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    iget v10, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    move/from16 v12, p4

    invoke-static/range {v3 .. v12}, Landroid/graphics/text/MeasuredText$Builder;->nAddStyleRun(JJIIZIIZ)V

    .line 322
    iput v11, p0, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    .line 324
    iget-object v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 325
    iget v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    iget-object v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    .line 326
    iget v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    iget-object v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mCachedMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    .line 327
    return-object p0
.end method

.method public build()Landroid/graphics/text/MeasuredText;
    .locals 20

    .line 478
    move-object/from16 v1, p0

    invoke-direct {v1}, Landroid/graphics/text/MeasuredText$Builder;->ensureNativePtrNoReuse()V

    .line 479
    iget v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mCurrentOffset:I

    iget-object v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    array-length v2, v2

    if-ne v0, v2, :cond_3

    .line 482
    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    invoke-static {v0}, Landroid/graphics/text/MeasuredText;->-$$Nest$fgetmComputeHyphenation(Landroid/graphics/text/MeasuredText;)Z

    move-result v0

    iget-boolean v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The hyphenation configuration is different from given hint MeasuredText"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_2

    move-wide v4, v2

    goto :goto_1

    :cond_2
    iget-object v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mHintMt:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v4

    :goto_1
    move-wide v8, v4

    .line 488
    .local v8, "hintPtr":J
    iget-wide v6, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    iget-object v10, v1, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    iget-boolean v11, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    iget-boolean v12, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    iget-boolean v13, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    iget-boolean v14, v1, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    invoke-static/range {v6 .. v14}, Landroid/graphics/text/MeasuredText$Builder;->nBuildMeasuredText(JJ[CZZZZ)J

    move-result-wide v4

    move-wide v11, v4

    .line 490
    .local v11, "ptr":J
    new-instance v10, Landroid/graphics/text/MeasuredText;

    iget-object v13, v1, Landroid/graphics/text/MeasuredText$Builder;->mText:[C

    iget-boolean v14, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    iget-boolean v15, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    iget-boolean v0, v1, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    iget v4, v1, Landroid/graphics/text/MeasuredText$Builder;->mTop:I

    iget v5, v1, Landroid/graphics/text/MeasuredText$Builder;->mBottom:I

    const/16 v19, 0x0

    move/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v10 .. v19}, Landroid/graphics/text/MeasuredText;-><init>(J[CZZZIILandroid/graphics/text/MeasuredText-IA;)V

    .line 492
    .local v10, "res":Landroid/graphics/text/MeasuredText;
    sget-object v0, Landroid/graphics/text/MeasuredText$Builder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, v10, v11, v12}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    nop

    .line 495
    iget-wide v4, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/graphics/text/MeasuredText$Builder;->nFreeBuilder(J)V

    .line 496
    iput-wide v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 493
    return-object v10

    .line 495
    .end local v8    # "hintPtr":J
    .end local v10    # "res":Landroid/graphics/text/MeasuredText;
    .end local v11    # "ptr":J
    :catchall_0
    move-exception v0

    iget-wide v4, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/graphics/text/MeasuredText$Builder;->nFreeBuilder(J)V

    .line 496
    iput-wide v2, v1, Landroid/graphics/text/MeasuredText$Builder;->mNativePtr:J

    .line 497
    throw v0

    .line 480
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Style info has not been provided for all text."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComputeBounds(Z)Landroid/graphics/text/MeasuredText$Builder;
    .locals 0
    .param p1, "computeBounds"    # Z

    .line 465
    iput-boolean p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeBounds:Z

    .line 466
    return-object p0
.end method

.method public setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;
    .locals 3
    .param p1, "mode"    # I

    .line 416
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hyphenation mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MeasuredText"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 432
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    goto :goto_0

    .line 426
    :pswitch_0
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 427
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 428
    goto :goto_0

    .line 422
    :pswitch_1
    iput-boolean v0, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 423
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 424
    goto :goto_0

    .line 418
    :pswitch_2
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeHyphenation:Z

    .line 419
    iput-boolean v1, p0, Landroid/graphics/text/MeasuredText$Builder;->mFastHyphenation:Z

    .line 420
    nop

    .line 435
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setComputeHyphenation(Z)Landroid/graphics/text/MeasuredText$Builder;
    .locals 0
    .param p1, "computeHyphenation"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    nop

    .line 371
    nop

    .line 370
    invoke-virtual {p0, p1}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    .line 372
    return-object p0
.end method

.method public setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;
    .locals 0
    .param p1, "computeLayout"    # Z

    .line 451
    iput-boolean p1, p0, Landroid/graphics/text/MeasuredText$Builder;->mComputeLayout:Z

    .line 452
    return-object p0
.end method
