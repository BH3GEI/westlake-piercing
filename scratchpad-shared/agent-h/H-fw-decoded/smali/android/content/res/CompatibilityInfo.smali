.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;,
        Landroid/content/res/CompatibilityInfo$CompatScale;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final HAS_OVERRIDE_SCALING:I = 0x20

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_COMPAT_RES:I = 0x10

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field private static final SCALING_REQUIRED:I = 0x1

.field private static sOverrideDensityInvertScale:F

.field private static sOverrideDisplayRotation:I

.field private static sOverrideInvertedScale:F


# instance fields
.field public final applicationDensity:I

.field public final applicationDensityInvertedScale:F

.field public final applicationDensityScale:F

.field public applicationDisplayRotation:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 159
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 162
    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 166
    const/4 v0, -0x1

    sput v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 935
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 361
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1, v1}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 364
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 2
    .param p1, "compFlags"    # I
    .param p2, "dens"    # I
    .param p3, "scale"    # F
    .param p4, "invertedScale"    # F

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 351
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 352
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 353
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 354
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 355
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 356
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 357
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 6
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "screenLayout":I
    .end local p3    # "sw":I
    .end local p4    # "forceCompat":Z
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "screenLayout":I
    .local v3, "sw":I
    .local v4, "forceCompat":Z
    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZF)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZF)V
    .locals 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .param p5, "scaleFactor"    # F

    .line 177
    move v6, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "screenLayout":I
    .end local p3    # "sw":I
    .end local p4    # "forceCompat":Z
    .end local p5    # "scaleFactor":F
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "screenLayout":I
    .local v3, "sw":I
    .local v4, "forceCompat":Z
    .local v5, "scaleFactor":F
    invoke-direct/range {v0 .. v6}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZFF)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZFF)V
    .locals 9
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "screenLayout"    # I
    .param p3, "sw"    # I
    .param p4, "forceCompat"    # Z
    .param p5, "scaleFactor"    # F
    .param p6, "densityScaleFactor"    # F

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "compatFlags":I
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 185
    or-int/lit8 v0, v0, 0x10

    .line 187
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p5, v1

    if-nez v2, :cond_17

    cmpl-float v2, p6, v1

    if-eqz v2, :cond_1

    goto/16 :goto_7

    .line 198
    :cond_1
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v2, :cond_e

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v2, :cond_e

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 248
    :cond_2
    const/4 v2, 0x2

    .line 254
    .local v2, "EXPANDABLE":I
    const/16 v3, 0x8

    .line 260
    .local v3, "LARGE_SCREENS":I
    const/16 v4, 0x20

    .line 262
    .local v4, "XLARGE_SCREENS":I
    const/4 v5, 0x0

    .line 266
    .local v5, "sizeInfo":I
    const/4 v6, 0x0

    .line 268
    .local v6, "anyResizeable":Z
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_3

    .line 269
    or-int/lit8 v5, v5, 0x8

    .line 270
    const/4 v6, 0x1

    .line 271
    if-nez p4, :cond_3

    .line 275
    or-int/lit8 v5, v5, 0x22

    .line 278
    :cond_3
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 279
    const/4 v6, 0x1

    .line 280
    if-nez p4, :cond_4

    .line 281
    or-int/lit8 v5, v5, 0x22

    .line 284
    :cond_4
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x1000

    if-eqz v7, :cond_5

    .line 285
    const/4 v6, 0x1

    .line 286
    or-int/lit8 v5, v5, 0x2

    .line 289
    :cond_5
    if-eqz p4, :cond_6

    .line 294
    and-int/lit8 v5, v5, -0x3

    .line 297
    :cond_6
    or-int/lit8 v0, v0, 0x8

    .line 298
    and-int/lit8 v7, p2, 0xf

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_7

    .line 301
    and-int/lit8 v0, v0, -0x9

    .line 303
    :cond_7
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_9

    .line 304
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 308
    :pswitch_1
    and-int/lit8 v7, v5, 0x8

    if-eqz v7, :cond_8

    .line 309
    and-int/lit8 v0, v0, -0x9

    .line 311
    :cond_8
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_9

    .line 312
    or-int/lit8 v0, v0, 0x4

    .line 317
    :cond_9
    :goto_0
    const/high16 v7, 0x10000000

    and-int/2addr v7, p2

    if-eqz v7, :cond_b

    .line 318
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_a

    .line 319
    and-int/lit8 v0, v0, -0x9

    goto :goto_1

    .line 320
    :cond_a
    if-nez v6, :cond_c

    .line 321
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 324
    :cond_b
    and-int/lit8 v0, v0, -0x9

    .line 325
    or-int/lit8 v0, v0, 0x4

    .line 328
    :cond_c
    :goto_1
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_d

    .line 329
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 330
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 331
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 332
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 333
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    goto :goto_6

    .line 335
    :cond_d
    const/16 v7, 0xa0

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 336
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 338
    iget v7, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float v7, v1, v7

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 339
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    iput v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 341
    iget v7, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    div-float/2addr v1, v7

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 342
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 201
    .end local v2    # "EXPANDABLE":I
    .end local v3    # "LARGE_SCREENS":I
    .end local v4    # "XLARGE_SCREENS":I
    .end local v5    # "sizeInfo":I
    .end local v6    # "anyResizeable":Z
    :cond_e
    :goto_2
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v2, :cond_f

    .line 202
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    goto :goto_3

    .line 203
    :cond_f
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    :goto_3
    nop

    .line 204
    .local v2, "required":I
    if-nez v2, :cond_10

    .line 205
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 207
    :cond_10
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v3, :cond_11

    .line 208
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_4

    :cond_11
    move v3, v2

    .line 209
    .local v3, "compat":I
    :goto_4
    if-ge v3, v2, :cond_12

    .line 210
    move v3, v2

    .line 212
    :cond_12
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 214
    .local v4, "largest":I
    const/16 v5, 0x140

    if-le v2, v5, :cond_13

    .line 221
    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    .line 222
    :cond_13
    if-eqz v4, :cond_14

    if-le p3, v4, :cond_14

    .line 226
    or-int/lit8 v0, v0, 0xa

    goto :goto_5

    .line 227
    :cond_14
    if-lt v3, p3, :cond_15

    .line 230
    or-int/lit8 v0, v0, 0x4

    goto :goto_5

    .line 231
    :cond_15
    if-eqz p4, :cond_16

    .line 234
    or-int/lit8 v0, v0, 0x8

    .line 238
    :cond_16
    :goto_5
    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v5, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 239
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 240
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 241
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 242
    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 243
    .end local v2    # "required":I
    .end local v3    # "compat":I
    .end local v4    # "largest":I
    nop

    .line 346
    :goto_6
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 347
    return-void

    .line 188
    :cond_17
    :goto_7
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 189
    div-float v2, v1, p5

    iput v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 190
    iput p6, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 191
    div-float/2addr v1, p6

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 192
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 194
    const/16 v1, 0x24

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 196
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    .line 956
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "displayRotation"    # I
    .param p1, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 694
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 695
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    .line 697
    :cond_0
    return-void
.end method

.method public static applyOverrideIfNeeded(Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 701
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideDisplayRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    invoke-static {v0, p0}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 704
    :cond_0
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-static {v0, v1, p0}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 707
    :cond_1
    return-void
.end method

.method public static applyOverrideIfNeeded(Landroid/util/MergedConfiguration;)V
    .locals 3
    .param p0, "mergedConfig"    # Landroid/util/MergedConfiguration;

    .line 711
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideDisplayRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 713
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 712
    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 714
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 715
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 714
    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 716
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 717
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 716
    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 719
    :cond_0
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 721
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 720
    invoke-static {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 722
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 723
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 722
    invoke-static {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 724
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 725
    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 724
    invoke-static {v0, v1, v2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 727
    :cond_1
    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 13
    .param p0, "dm"    # Landroid/util/DisplayMetrics;
    .param p1, "outDm"    # Landroid/util/DisplayMetrics;

    .line 780
    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 781
    .local v0, "width":I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 783
    .local v1, "height":I
    if-ge v0, v1, :cond_0

    .line 784
    move v2, v0

    .line 785
    .local v2, "shortSize":I
    move v3, v1

    .local v3, "longSize":I
    goto :goto_0

    .line 787
    .end local v2    # "shortSize":I
    .end local v3    # "longSize":I
    :cond_0
    move v2, v1

    .line 788
    .restart local v2    # "shortSize":I
    move v3, v0

    .line 790
    .restart local v3    # "longSize":I
    :goto_0
    const/high16 v4, 0x43a00000    # 320.0f

    iget v5, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 791
    .local v5, "newShortSize":I
    int-to-float v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    .line 792
    .local v6, "aspect":F
    const v7, 0x3fe3bbbc

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 793
    const v6, 0x3fe3bbbc

    .line 795
    :cond_1
    int-to-float v7, v5

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 797
    .local v4, "newLongSize":I
    if-ge v0, v1, :cond_2

    .line 798
    move v7, v5

    .line 799
    .local v7, "newWidth":I
    move v8, v4

    .local v8, "newHeight":I
    goto :goto_1

    .line 801
    .end local v7    # "newWidth":I
    .end local v8    # "newHeight":I
    :cond_2
    move v7, v4

    .line 802
    .restart local v7    # "newWidth":I
    move v8, v5

    .line 805
    .restart local v8    # "newHeight":I
    :goto_1
    int-to-float v9, v0

    int-to-float v10, v7

    div-float/2addr v9, v10

    .line 806
    .local v9, "sw":F
    int-to-float v10, v1

    int-to-float v11, v8

    div-float/2addr v10, v11

    .line 807
    .local v10, "sh":F
    cmpg-float v11, v9, v10

    if-gez v11, :cond_3

    move v11, v9

    goto :goto_2

    :cond_3
    move v11, v10

    .line 808
    .local v11, "scale":F
    :goto_2
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    .line 809
    const/high16 v11, 0x3f800000    # 1.0f

    .line 812
    :cond_4
    if-eqz p1, :cond_5

    .line 813
    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 814
    iput v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 817
    :cond_5
    return v11
.end method

.method public static getOverrideDensityInvertedScale()F
    .locals 1

    .line 752
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    return v0
.end method

.method public static getOverrideDisplayRotation()I
    .locals 1

    .line 768
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    return v0
.end method

.method public static getOverrideInvertedScale()F
    .locals 1

    .line 747
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    return v0
.end method

.method private static hasOverrideDisplayRotation()Z
    .locals 2

    .line 757
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static hasOverrideScale()Z
    .locals 2

    .line 731
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    cmpl-float v0, v0, v1

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

.method private isCompatibilityFlagsEqual(Landroid/content/res/CompatibilityInfo;)Z
    .locals 2
    .param p1, "oc"    # Landroid/content/res/CompatibilityInfo;

    .line 868
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDisplayRotationEqual(Landroid/content/res/CompatibilityInfo;)Z
    .locals 2
    .param p1, "oc"    # Landroid/content/res/CompatibilityInfo;

    .line 864
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScaleEqual(Landroid/content/res/CompatibilityInfo;)Z
    .locals 3
    .param p1, "oc"    # Landroid/content/res/CompatibilityInfo;

    .line 854
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 855
    :cond_0
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-eq v1, v2, :cond_1

    return v0

    .line 856
    :cond_1
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    return v0

    .line 857
    :cond_2
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    return v0

    .line 858
    :cond_3
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    return v0

    .line 859
    :cond_4
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    iget v2, p1, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    return v0

    .line 860
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public static scaleConfiguration(FFLandroid/content/res/Configuration;)V
    .locals 2
    .param p0, "invertScale"    # F
    .param p1, "densityInvertScale"    # F
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 686
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 688
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p0}, Landroid/app/WindowConfiguration;->scale(F)V

    .line 689
    return-void
.end method

.method public static scaleConfiguration(FLandroid/content/res/Configuration;)V
    .locals 0
    .param p0, "invertScale"    # F
    .param p1, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 680
    invoke-static {p0, p0, p1}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 681
    return-void
.end method

.method private static scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V
    .locals 2
    .param p0, "invertScale"    # F
    .param p1, "densityInvertScale"    # F
    .param p2, "inoutDm"    # Landroid/util/DisplayMetrics;
    .param p3, "applyToSize"    # Z

    .line 630
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->density:F

    .line 631
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 646
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 647
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 648
    iget v0, p2, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v0, p1

    iput v0, p2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 649
    if-eqz p3, :cond_0

    .line 650
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 651
    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 653
    :cond_0
    return-void
.end method

.method public static setOverrideDisplayRotation(I)V
    .locals 0
    .param p0, "displayRotation"    # I

    .line 762
    sput p0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    .line 763
    return-void
.end method

.method public static setOverrideInvertedScale(F)V
    .locals 0
    .param p0, "invertScale"    # F

    .line 736
    invoke-static {p0, p0}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF)V

    .line 737
    return-void
.end method

.method public static setOverrideInvertedScale(FF)V
    .locals 0
    .param p0, "invertScale"    # F
    .param p1, "densityInvertScale"    # F

    .line 741
    sput p0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    .line 742
    sput p1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    .line 743
    return-void
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .line 394
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public applyDisplayMetricsIfNeeded(Landroid/util/DisplayMetrics;Z)V
    .locals 2
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;
    .param p2, "applyToSize"    # Z

    .line 600
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideInvertedScale:F

    sget v1, Landroid/content/res/CompatibilityInfo;->sOverrideDensityInvertScale:F

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V

    .line 603
    return-void

    .line 605
    :cond_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 608
    :cond_1
    return-void
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "displayDensity"    # I
    .param p2, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 656
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideDisplayRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    sget v0, Landroid/content/res/CompatibilityInfo;->sOverrideDisplayRotation:I

    invoke-static {v0, p2}, Landroid/content/res/CompatibilityInfo;->applyDisplayRotationConfiguration(ILandroid/content/res/Configuration;)V

    .line 659
    :cond_0
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 660
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 664
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 667
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 668
    iget v0, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 669
    iget v0, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 671
    :cond_2
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 672
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {v0, v1, p2}, Landroid/content/res/CompatibilityInfo;->scaleConfiguration(FFLandroid/content/res/Configuration;)V

    .line 676
    :cond_3
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 611
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->hasOverrideScale()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    goto :goto_0

    .line 617
    :cond_1
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 618
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 621
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/CompatibilityInfo;->scaleDisplayMetrics(FFLandroid/util/DisplayMetrics;Z)V

    .line 625
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 822
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 823
    return v0

    .line 826
    :cond_0
    instance-of v1, p1, Landroid/content/res/CompatibilityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    .line 830
    .local v1, "oc":Landroid/content/res/CompatibilityInfo;
    invoke-direct {p0, v1}, Landroid/content/res/CompatibilityInfo;->isCompatibilityFlagsEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 831
    :cond_1
    invoke-direct {p0, v1}, Landroid/content/res/CompatibilityInfo;->isScaleEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 832
    :cond_2
    invoke-direct {p0, v1}, Landroid/content/res/CompatibilityInfo;->isDisplayRotationEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 833
    :cond_3
    return v0

    .line 827
    .end local v1    # "oc":Landroid/content/res/CompatibilityInfo;
    :cond_4
    return v2
.end method

.method public getCompatibilityChangesForConfig(Landroid/content/res/CompatibilityInfo;)I
    .locals 2
    .param p1, "o"    # Landroid/content/res/CompatibilityInfo;

    .line 841
    const/4 v0, 0x0

    .line 842
    .local v0, "changes":I
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isDisplayRotationEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 843
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 845
    :cond_0
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isScaleEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;->isCompatibilityFlagsEqual(Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 846
    :cond_1
    or-int/lit16 v0, v0, 0xd00

    .line 850
    :cond_2
    return v0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .line 407
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasOverrideScaling()Z
    .locals 1

    .line 376
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 907
    const/16 v0, 0x11

    .line 908
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/2addr v1, v2

    .line 909
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int/2addr v0, v2

    .line 910
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 911
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 912
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 913
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 914
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    add-int/2addr v1, v2

    .line 915
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isOverrideDisplayRotationRequired()Z
    .locals 2

    .line 381
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScalingRequired()Z
    .locals 2

    .line 371
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needsCompatResources()Z
    .locals 1

    .line 398
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    .line 390
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsScreen()Z
    .locals 1

    .line 386
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 874
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 876
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 880
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->hasOverrideScaling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    const-string v1, " overrideInvScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 885
    const-string v1, " overrideDensityInvScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 888
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isOverrideDisplayRotationRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    const-string v1, " overrideDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 892
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 893
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 896
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_4
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 899
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_5
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 925
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 928
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 929
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 930
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 931
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    return-void
.end method
