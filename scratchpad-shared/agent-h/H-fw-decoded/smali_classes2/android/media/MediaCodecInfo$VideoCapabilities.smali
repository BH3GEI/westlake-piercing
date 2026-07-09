.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "VideoCapabilities"

.field static final blacklist VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAllowMbOverride:Z

.field private greylist-max-o mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBlockHeight:I

.field private greylist-max-o mBlockWidth:I

.field private greylist-max-o mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHeightAlignment:I

.field private greylist-max-o mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private blacklist mPerformancePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSmallerDimensionUpperLimit:I

.field private greylist-max-o mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWidthAlignment:I

.field private greylist-max-o mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 2601
    const-string v0, "bitrate"

    const-string v1, "mime"

    const-string v2, "width"

    const-string v3, "height"

    const-string v4, "frame-rate"

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->VIDEO_LEVEL_CRITICAL_FORMAT_KEYS:Ljava/util/Set;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 2630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o applyAlignment(II)V
    .locals 7
    .param p1, "widthAlignment"    # I
    .param p2, "heightAlignment"    # I

    .line 3044
    const-string v0, "widthAlignment must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3045
    const-string v0, "heightAlignment must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3047
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    goto :goto_1

    .line 3049
    :cond_1
    :goto_0
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 3050
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 3051
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v4

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v5

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v6

    .line 3049
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 3055
    :goto_1
    iget v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 3056
    iget v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 3058
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {v0, v2}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3059
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {v0, v2}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 3060
    return-void
.end method

.method private greylist-max-o applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 7
    .param p1, "blockWidth"    # I
    .param p2, "blockHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    .line 3006
    .local p3, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p4, "rates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local p5, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string v0, "blockWidth must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3007
    const-string v0, "blockHeight must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 3009
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3010
    .local v0, "newBlockWidth":I
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3013
    .local v1, "newBlockHeight":I
    mul-int v2, v0, v1

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v2, v3

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int/2addr v2, v3

    .line 3015
    .local v2, "factor":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 3016
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v4, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3017
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3019
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v6, v0, v6

    invoke-static {v4, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3023
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v0, v5

    invoke-static {v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3025
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v1, v5

    invoke-static {v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3028
    :cond_0
    mul-int v4, v0, v1

    div-int/2addr v4, p1

    div-int/2addr v4, p2

    .line 3029
    .end local v2    # "factor":I
    .local v4, "factor":I
    if-eq v4, v3, :cond_1

    .line 3030
    invoke-static {p3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    .line 3031
    int-to-long v2, v4

    invoke-static {p4, v2, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    .line 3032
    div-int v2, v1, p2

    div-int v3, v0, p1

    invoke-static {p5, v2, v3}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    .line 3036
    :cond_1
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v2, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3037
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3038
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v2, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3039
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 3040
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 3041
    return-void
.end method

.method private greylist-max-o applyLevelLimits()V
    .locals 38

    .line 3150
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 3151
    .local v1, "maxBlocksPerSecond":J
    const/4 v3, 0x0

    .line 3152
    .local v3, "maxBlocks":I
    const/4 v4, 0x0

    .line 3153
    .local v4, "maxBps":I
    const/4 v12, 0x0

    .line 3155
    .local v12, "maxDPBBlocks":I
    const/4 v5, 0x4

    .line 3156
    .local v5, "errors":I
    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v13, v6, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 3157
    .local v13, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v14

    .line 3159
    .local v14, "mime":Ljava/lang/String;
    const-string v6, "video/avc"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Unsupported profile "

    const-string v8, "Unrecognized level "

    const-string v9, "Unrecognized profile "

    const-string v11, " for "

    const-string v15, "VideoCapabilities"

    .line 3837
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 3159
    if-eqz v6, :cond_2

    .line 3160
    const/16 v3, 0x63

    .line 3161
    const-wide/16 v1, 0x5cd

    .line 3162
    const v4, 0xfa00

    .line 3163
    const/16 v6, 0x18c

    .line 3164
    .end local v12    # "maxDPBBlocks":I
    .local v6, "maxDPBBlocks":I
    array-length v12, v13

    move/from16 v16, v5

    move-wide/from16 v36, v1

    move v1, v4

    move-wide/from16 v4, v36

    const/4 v2, 0x0

    .end local v5    # "errors":I
    .local v1, "maxBps":I
    .local v4, "maxBlocksPerSecond":J
    .local v16, "errors":I
    :goto_0
    if-ge v2, v12, :cond_1

    aget-object v0, v13, v2

    .line 3165
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v17, 0x0

    .local v17, "MBPS":I
    const/16 v18, 0x0

    .local v18, "FS":I
    const/16 v19, 0x0

    .local v19, "BR":I
    const/16 v20, 0x0

    .line 3166
    .local v20, "DPB":I
    const/16 v21, 0x1

    .line 3167
    .local v21, "supported":Z
    move/from16 v22, v2

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_0

    .line 3209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v23, v10

    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    or-int/lit8 v16, v16, 0x1

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3207
    :sswitch_0
    const/high16 v17, 0xff0000

    const v18, 0x22000

    const v19, 0xc3500

    const v20, 0xaa000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3205
    :sswitch_1
    const v17, 0x7f8000

    const v18, 0x22000

    const v19, 0x75300

    const v20, 0xaa000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3203
    :sswitch_2
    const v17, 0x3fc000

    const v18, 0x22000

    const v19, 0x3a980

    const v20, 0xaa000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3201
    :sswitch_3
    const v17, 0x1fa400

    const v18, 0x9000

    const v19, 0x3a980

    const v20, 0x2d000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3199
    :sswitch_4
    const/high16 v17, 0xf0000

    const v18, 0x9000

    const v19, 0x3a980

    const v20, 0x2d000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3197
    :sswitch_5
    const/high16 v17, 0x90000

    const/16 v18, 0x5640

    const v19, 0x20f58

    const v20, 0x1af40

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3195
    :sswitch_6
    const v17, 0x7f800

    const/16 v18, 0x2200

    const v19, 0xc350

    const v20, 0x8800

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3193
    :sswitch_7
    const v17, 0x3c000

    const/16 v18, 0x2000

    const v19, 0xc350

    const v20, 0x8000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3191
    :sswitch_8
    const v17, 0x3c000

    const/16 v18, 0x2000

    const/16 v19, 0x4e20

    const v20, 0x8000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3189
    :sswitch_9
    const v17, 0x34bc0

    const/16 v18, 0x1400

    const/16 v19, 0x4e20

    const/16 v20, 0x5000

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3187
    :sswitch_a
    const v17, 0x1a5e0

    const/16 v18, 0xe10

    const/16 v19, 0x36b0

    const/16 v20, 0x4650

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3185
    :sswitch_b
    const v17, 0x9e34

    const/16 v18, 0x654

    const/16 v19, 0x2710

    const/16 v20, 0x1fa4

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3183
    :sswitch_c
    const/16 v17, 0x4f1a

    const/16 v18, 0x654

    const/16 v19, 0xfa0

    const/16 v20, 0x1fa4

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3181
    :sswitch_d
    const/16 v17, 0x4d58

    const/16 v18, 0x318

    const/16 v19, 0xfa0

    const/16 v20, 0x1290

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3179
    :sswitch_e
    const/16 v17, 0x2e68

    const/16 v18, 0x18c

    const/16 v19, 0x7d0

    const/16 v20, 0x948

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3177
    :sswitch_f
    const/16 v17, 0x2e68

    const/16 v18, 0x18c

    const/16 v19, 0x300

    const/16 v20, 0x948

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto/16 :goto_1

    .line 3175
    :sswitch_10
    const/16 v17, 0x1770

    const/16 v18, 0x18c

    const/16 v19, 0x180

    const/16 v20, 0x948

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto :goto_1

    .line 3173
    :sswitch_11
    const/16 v17, 0xbb8

    const/16 v18, 0x18c

    const/16 v19, 0xc0

    const/16 v20, 0x384

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto :goto_1

    .line 3171
    :sswitch_12
    const/16 v17, 0x5cd

    const/16 v18, 0x63

    const/16 v19, 0x80

    const/16 v20, 0x18c

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    goto :goto_1

    .line 3169
    :sswitch_13
    const/16 v17, 0x5cd

    const/16 v18, 0x63

    const/16 v19, 0x40

    const/16 v20, 0x18c

    move-object/from16 v23, v10

    move/from16 v2, v17

    move/from16 v10, v18

    move-object/from16 v18, v8

    move/from16 v17, v12

    move/from16 v12, v19

    move/from16 v8, v20

    .line 3213
    .end local v17    # "MBPS":I
    .end local v18    # "FS":I
    .end local v19    # "BR":I
    .end local v20    # "DPB":I
    .local v2, "MBPS":I
    .local v8, "DPB":I
    .local v10, "FS":I
    .local v12, "BR":I
    :goto_1
    move-object/from16 v19, v13

    .end local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v19, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v13, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v13, :sswitch_data_1

    .line 3232
    move-object/from16 v20, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v13, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    or-int/lit8 v16, v16, 0x1

    .line 3235
    mul-int/lit16 v12, v12, 0x3e8

    goto :goto_3

    .line 3218
    :sswitch_14
    mul-int/lit16 v12, v12, 0xbb8

    move-object/from16 v20, v7

    goto :goto_3

    .line 3216
    :sswitch_15
    mul-int/lit16 v12, v12, 0x4e2

    move-object/from16 v20, v7

    goto :goto_3

    .line 3222
    :sswitch_16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v20, v7

    iget v7, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    or-int/lit8 v16, v16, 0x2

    .line 3225
    const/16 v21, 0x0

    goto :goto_2

    .line 3213
    :sswitch_17
    move-object/from16 v20, v7

    .line 3230
    :goto_2
    mul-int/lit16 v12, v12, 0x3e8

    .line 3237
    :goto_3
    if-eqz v21, :cond_0

    .line 3238
    and-int/lit8 v7, v16, -0x5

    move/from16 v16, v7

    .line 3240
    :cond_0
    move-object/from16 v24, v14

    .end local v14    # "mime":Ljava/lang/String;
    .local v24, "mime":Ljava/lang/String;
    int-to-long v13, v2

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3241
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3242
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3243
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3164
    .end local v0    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v2    # "MBPS":I
    .end local v8    # "DPB":I
    .end local v10    # "FS":I
    .end local v12    # "BR":I
    .end local v21    # "supported":Z
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v12, v17

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object/from16 v7, v20

    move-object/from16 v10, v23

    move-object/from16 v14, v24

    goto/16 :goto_0

    .line 3246
    .end local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v24    # "mime":Ljava/lang/String;
    .restart local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "mime":Ljava/lang/String;
    :cond_1
    move-object/from16 v23, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    .end local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v14    # "mime":Ljava/lang/String;
    .restart local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v24    # "mime":Ljava/lang/String;
    mul-int/lit8 v0, v3, 0x8

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v0, v7

    .line 3247
    .local v0, "maxLengthInBlocks":I
    const/4 v8, 0x1

    const/4 v9, 0x1

    move v2, v6

    .end local v6    # "maxDPBBlocks":I
    .local v2, "maxDPBBlocks":I
    const/16 v6, 0x10

    const/16 v7, 0x10

    move v10, v2

    .end local v2    # "maxDPBBlocks":I
    .local v10, "maxDPBBlocks":I
    move v2, v0

    move v11, v10

    move v10, v1

    move v1, v0

    move-object/from16 v0, p0

    .end local v0    # "maxLengthInBlocks":I
    .local v1, "maxLengthInBlocks":I
    .local v10, "maxBps":I
    .local v11, "maxDPBBlocks":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3252
    .end local v1    # "maxLengthInBlocks":I
    move-object/from16 v6, p0

    move v1, v10

    move v12, v11

    move-object/from16 v33, v19

    move-object/from16 v13, v24

    goto/16 :goto_1c

    .end local v10    # "maxBps":I
    .end local v11    # "maxDPBBlocks":I
    .end local v16    # "errors":I
    .end local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v24    # "mime":Ljava/lang/String;
    .local v1, "maxBlocksPerSecond":J
    .local v4, "maxBps":I
    .restart local v5    # "errors":I
    .local v12, "maxDPBBlocks":I
    .restart local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v14    # "mime":Ljava/lang/String;
    :cond_2
    move-object/from16 v20, v7

    move-object/from16 v18, v8

    move-object/from16 v23, v10

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    .end local v13    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v14    # "mime":Ljava/lang/String;
    .restart local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v24    # "mime":Ljava/lang/String;
    const-string v0, "video/mpeg2"

    move-object/from16 v13, v24

    .end local v24    # "mime":Ljava/lang/String;
    .local v13, "mime":Ljava/lang/String;
    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v6, "/"

    const-string v7, "Unrecognized profile/level "

    if-eqz v0, :cond_5

    .line 3253
    const/16 v0, 0xb

    .local v0, "maxWidth":I
    const/16 v8, 0x9

    .local v8, "maxHeight":I
    const/16 v14, 0xf

    .line 3254
    .local v14, "maxRate":I
    const/16 v3, 0x63

    .line 3255
    const-wide/16 v1, 0x5cd

    .line 3256
    const v4, 0xfa00

    .line 3257
    move/from16 v17, v8

    move-object/from16 v8, v19

    const/16 v19, 0xc

    .end local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v8, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v17, "maxHeight":I
    array-length v10, v8

    move/from16 v16, v5

    move-wide/from16 v36, v1

    move v1, v0

    move/from16 v2, v17

    const/4 v0, 0x0

    move-object/from16 v17, v8

    move v8, v14

    move v14, v4

    move-wide/from16 v4, v36

    .end local v0    # "maxWidth":I
    .end local v5    # "errors":I
    .local v1, "maxWidth":I
    .local v2, "maxHeight":I
    .local v4, "maxBlocksPerSecond":J
    .local v8, "maxRate":I
    .local v14, "maxBps":I
    .restart local v16    # "errors":I
    .local v17, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_4
    if-ge v0, v10, :cond_4

    move/from16 v18, v0

    aget-object v0, v17, v18

    .line 3258
    .local v0, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v21, 0x0

    .local v21, "MBPS":I
    const/16 v22, 0x0

    .local v22, "FS":I
    const/16 v24, 0x0

    .local v24, "BR":I
    const/16 v25, 0x0

    .local v25, "FR":I
    const/16 v26, 0x0

    .local v26, "W":I
    const/16 v27, 0x0

    .line 3259
    .local v27, "H":I
    const/16 v28, 0x1

    .line 3260
    .local v28, "supported":Z
    move/from16 v29, v10

    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v10, :pswitch_data_0

    .line 3301
    move/from16 v30, v12

    .end local v12    # "maxDPBBlocks":I
    .local v30, "maxDPBBlocks":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    or-int/lit8 v16, v16, 0x1

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_5

    .line 3295
    .end local v30    # "maxDPBBlocks":I
    .restart local v12    # "maxDPBBlocks":I
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v12

    move-object/from16 v12, v20

    .end local v12    # "maxDPBBlocks":I
    .restart local v30    # "maxDPBBlocks":I
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    or-int/lit8 v16, v16, 0x2

    .line 3298
    const/16 v28, 0x0

    .line 3299
    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_5

    .line 3273
    .end local v30    # "maxDPBBlocks":I
    .restart local v12    # "maxDPBBlocks":I
    :pswitch_1
    move/from16 v30, v12

    .end local v12    # "maxDPBBlocks":I
    .restart local v30    # "maxDPBBlocks":I
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v10, :pswitch_data_1

    .line 3285
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    or-int/lit8 v16, v16, 0x1

    .line 3290
    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_5

    .line 3283
    :pswitch_2
    const/16 v25, 0x3c

    const/16 v26, 0x78

    const/16 v27, 0x44

    const v21, 0x77880

    const/16 v22, 0x1fe0

    const v24, 0x13880

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_5

    .line 3281
    :pswitch_3
    const/16 v25, 0x3c

    const/16 v26, 0x78

    const/16 v27, 0x44

    const v21, 0x3bc40

    const/16 v22, 0x1fe0

    const v24, 0x13880

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_5

    .line 3279
    :pswitch_4
    const/16 v25, 0x3c

    const/16 v26, 0x5a

    const/16 v27, 0x44

    const v21, 0x2cd30

    const/16 v22, 0x17e8

    const v24, 0xea60

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_5

    .line 3277
    :pswitch_5
    const/16 v25, 0x1e

    const/16 v26, 0x2d

    const/16 v27, 0x24

    const v21, 0x9e34

    const/16 v22, 0x654

    const/16 v24, 0x3a98

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_5

    .line 3275
    :pswitch_6
    const/16 v25, 0x1e

    const/16 v26, 0x16

    const/16 v27, 0x12

    const/16 v21, 0x2e68

    const/16 v22, 0x18c

    const/16 v24, 0xfa0

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto/16 :goto_5

    .line 3262
    .end local v30    # "maxDPBBlocks":I
    .restart local v12    # "maxDPBBlocks":I
    :pswitch_7
    move/from16 v30, v12

    .end local v12    # "maxDPBBlocks":I
    .restart local v30    # "maxDPBBlocks":I
    iget v10, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v10, :pswitch_data_2

    .line 3266
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    or-int/lit8 v16, v16, 0x1

    .line 3271
    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    goto :goto_5

    .line 3264
    :pswitch_8
    const/16 v25, 0x1e

    const/16 v26, 0x2d

    const/16 v27, 0x24

    const v21, 0x9e34

    const/16 v22, 0x654

    const/16 v24, 0x3a98

    move/from16 v10, v21

    move/from16 v12, v22

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v0, v24

    move/from16 v9, v25

    move-object/from16 v25, v11

    move-object/from16 v24, v15

    move/from16 v15, v26

    move/from16 v11, v27

    .line 3305
    .end local v22    # "FS":I
    .end local v24    # "BR":I
    .end local v25    # "FR":I
    .end local v26    # "W":I
    .end local v27    # "H":I
    .local v0, "BR":I
    .local v9, "FR":I
    .local v10, "MBPS":I
    .local v11, "H":I
    .local v12, "FS":I
    .local v15, "W":I
    .local v21, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_5
    if-eqz v28, :cond_3

    .line 3306
    and-int/lit8 v16, v16, -0x5

    .line 3308
    :cond_3
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    int-to-long v6, v10

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3309
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3310
    mul-int/lit16 v6, v0, 0x3e8

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3311
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3312
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3313
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3257
    .end local v0    # "BR":I
    .end local v9    # "FR":I
    .end local v10    # "MBPS":I
    .end local v11    # "H":I
    .end local v12    # "FS":I
    .end local v15    # "W":I
    .end local v21    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v28    # "supported":Z
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v9, v22

    move-object/from16 v15, v24

    move-object/from16 v11, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v10, v29

    move/from16 v12, v30

    goto/16 :goto_4

    .line 3315
    .end local v30    # "maxDPBBlocks":I
    .local v12, "maxDPBBlocks":I
    :cond_4
    move/from16 v30, v12

    .end local v12    # "maxDPBBlocks":I
    .restart local v30    # "maxDPBBlocks":I
    move v0, v8

    .end local v8    # "maxRate":I
    .local v0, "maxRate":I
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move v10, v0

    move-object/from16 v12, v17

    move-object/from16 v0, p0

    .end local v0    # "maxRate":I
    .end local v17    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v10, "maxRate":I
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3319
    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 3320
    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    .end local v10    # "maxRate":I
    move-object v6, v0

    move-object/from16 v33, v12

    move v1, v14

    move/from16 v12, v30

    goto/16 :goto_1c

    .end local v14    # "maxBps":I
    .end local v16    # "errors":I
    .end local v30    # "maxDPBBlocks":I
    .local v1, "maxBlocksPerSecond":J
    .local v4, "maxBps":I
    .restart local v5    # "errors":I
    .local v12, "maxDPBBlocks":I
    .restart local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v22, v9

    move-object/from16 v25, v11

    move/from16 v30, v12

    move-object/from16 v24, v15

    move-object/from16 v12, v19

    const/16 v19, 0xc

    .end local v19    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v30    # "maxDPBBlocks":I
    const-string v6, "video/mp4v-es"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3321
    const/16 v6, 0xb

    .local v6, "maxWidth":I
    const/16 v7, 0x9

    .local v7, "maxHeight":I
    const/16 v8, 0xf

    .line 3322
    .restart local v8    # "maxRate":I
    const/16 v3, 0x63

    .line 3323
    const-wide/16 v1, 0x5cd

    .line 3324
    const v4, 0xfa00

    .line 3325
    array-length v9, v12

    move v10, v4

    move v11, v5

    move v14, v8

    move-wide v4, v1

    move v1, v6

    move v2, v7

    const/4 v6, 0x0

    .end local v5    # "errors":I
    .end local v6    # "maxWidth":I
    .end local v7    # "maxHeight":I
    .end local v8    # "maxRate":I
    .local v1, "maxWidth":I
    .restart local v2    # "maxHeight":I
    .local v4, "maxBlocksPerSecond":J
    .local v10, "maxBps":I
    .local v11, "errors":I
    .local v14, "maxRate":I
    :goto_6
    if-ge v6, v9, :cond_8

    aget-object v7, v12, v6

    .line 3326
    .local v7, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v8, 0x0

    .local v8, "MBPS":I
    const/4 v15, 0x0

    .local v15, "FS":I
    const/16 v16, 0x0

    .local v16, "BR":I
    const/16 v17, 0x0

    .local v17, "FR":I
    const/16 v18, 0x0

    .local v18, "W":I
    const/16 v21, 0x0

    .line 3327
    .local v21, "H":I
    const/16 v28, 0x0

    .line 3328
    .local v28, "strict":Z
    const/16 v29, 0x1

    .line 3329
    .local v29, "supported":Z
    iget v0, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v0, :sswitch_data_2

    .line 3404
    move/from16 v31, v6

    move-object/from16 v6, v27

    move/from16 v27, v8

    move-object/from16 v8, v26

    move/from16 v26, v9

    move-object/from16 v9, v25

    move/from16 v25, v11

    move-object/from16 v11, v24

    move/from16 v24, v15

    .end local v8    # "MBPS":I
    .end local v11    # "errors":I
    .end local v15    # "FS":I
    .local v24, "FS":I
    .local v25, "errors":I
    .local v27, "MBPS":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    or-int/lit8 v0, v25, 0x1

    move/from16 v15, v16

    move-object/from16 v16, v7

    move v7, v15

    move/from16 v25, v0

    move/from16 v15, v24

    move/from16 v0, v27

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    .end local v25    # "errors":I
    .local v0, "errors":I
    goto/16 :goto_7

    .line 3358
    .end local v0    # "errors":I
    .end local v24    # "FS":I
    .end local v27    # "MBPS":I
    .restart local v8    # "MBPS":I
    .restart local v11    # "errors":I
    .restart local v15    # "FS":I
    :sswitch_18
    iget v0, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_3

    .line 3373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v6

    move-object/from16 v6, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v27, v8

    .end local v8    # "MBPS":I
    .restart local v27    # "MBPS":I
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v26, v9

    iget v9, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v9, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v25, v11

    move-object/from16 v11, v24

    .end local v11    # "errors":I
    .restart local v25    # "errors":I
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    or-int/lit8 v0, v25, 0x1

    .line 3378
    .end local v25    # "errors":I
    .restart local v0    # "errors":I
    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move/from16 v25, v0

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v0, v27

    move-object/from16 v27, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3371
    .end local v0    # "errors":I
    .end local v27    # "MBPS":I
    .restart local v8    # "MBPS":I
    .restart local v11    # "errors":I
    :sswitch_19
    const/16 v17, 0x1e

    const/16 v18, 0x2d

    const/16 v21, 0x24

    const v8, 0xbdd8

    const/16 v15, 0x654

    const/16 v16, 0x1f40

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3369
    :sswitch_1a
    const/16 v17, 0x1e

    const/16 v18, 0x2c

    const/16 v21, 0x24

    const/16 v8, 0x5cd0

    const/16 v15, 0x318

    const/16 v16, 0xbb8

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3367
    :sswitch_1b
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v8, 0x2e68

    const/16 v15, 0x18c

    const/16 v16, 0x5dc

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3365
    :sswitch_1c
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v8, 0x2e68

    const/16 v15, 0x18c

    const/16 v16, 0x300

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3363
    :sswitch_1d
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v8, 0x1734

    const/16 v15, 0x18c

    const/16 v16, 0x180

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3361
    :sswitch_1e
    const/16 v17, 0x1e

    const/16 v18, 0xb

    const/16 v21, 0x9

    const/16 v8, 0xb9a

    const/16 v15, 0x63

    const/16 v16, 0x80

    move/from16 v0, v16

    move-object/from16 v16, v7

    move v7, v0

    move/from16 v31, v6

    move v0, v8

    move/from16 v8, v21

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v27, v26

    move/from16 v26, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3398
    :sswitch_1f
    move/from16 v31, v6

    move-object/from16 v6, v27

    move/from16 v27, v8

    move-object/from16 v8, v26

    move/from16 v26, v9

    move-object/from16 v9, v25

    move/from16 v25, v11

    move-object/from16 v11, v24

    .end local v8    # "MBPS":I
    .end local v11    # "errors":I
    .restart local v25    # "errors":I
    .restart local v27    # "MBPS":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v15

    move-object/from16 v15, v20

    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    or-int/lit8 v0, v25, 0x2

    .line 3401
    .end local v25    # "errors":I
    .restart local v0    # "errors":I
    const/16 v29, 0x0

    .line 3402
    move/from16 v15, v16

    move-object/from16 v16, v7

    move v7, v15

    move/from16 v25, v0

    move/from16 v15, v24

    move/from16 v0, v27

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3331
    .end local v0    # "errors":I
    .end local v24    # "FS":I
    .end local v27    # "MBPS":I
    .restart local v8    # "MBPS":I
    .restart local v11    # "errors":I
    .restart local v15    # "FS":I
    :sswitch_20
    move/from16 v31, v6

    move-object/from16 v6, v27

    move/from16 v27, v8

    move-object/from16 v8, v26

    move/from16 v26, v9

    move-object/from16 v9, v25

    move/from16 v25, v11

    move-object/from16 v11, v24

    move/from16 v24, v15

    .end local v8    # "MBPS":I
    .end local v11    # "errors":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v25    # "errors":I
    .restart local v27    # "MBPS":I
    iget v0, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_4

    .line 3351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    or-int/lit8 v0, v25, 0x1

    .line 3356
    .end local v25    # "errors":I
    .restart local v0    # "errors":I
    move/from16 v15, v16

    move-object/from16 v16, v7

    move v7, v15

    move/from16 v25, v0

    move/from16 v15, v24

    move/from16 v0, v27

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3349
    .end local v0    # "errors":I
    .restart local v25    # "errors":I
    :sswitch_21
    const/16 v17, 0x1e

    const/16 v18, 0x50

    const/16 v21, 0x2d

    const v0, 0x1a5e0

    .end local v27    # "MBPS":I
    .local v0, "MBPS":I
    const/16 v15, 0xe10

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x2ee0

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3347
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_22
    const/16 v17, 0x1e

    const/16 v18, 0x2d

    const/16 v21, 0x24

    const v0, 0x9e34

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x654

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x1f40

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3345
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_23
    const/16 v17, 0x1e

    const/16 v18, 0x28

    const/16 v21, 0x1e

    const v0, 0x8ca0

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x4b0

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0xfa0

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3343
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_24
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v0, 0x2e68

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x18c

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x180

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3341
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_25
    const/16 v17, 0x1e

    const/16 v18, 0x16

    const/16 v21, 0x12

    const/16 v0, 0x1734

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x18c

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x80

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto/16 :goto_7

    .line 3336
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_26
    const/16 v17, 0x1e

    const/16 v18, 0xb

    const/16 v21, 0x9

    const/16 v0, 0x5cd

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x63

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x40

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto :goto_7

    .line 3338
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_27
    const/16 v28, 0x1

    .line 3339
    const/16 v17, 0xf

    const/16 v18, 0xb

    const/16 v21, 0x9

    const/16 v0, 0x5cd

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x63

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x80

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    goto :goto_7

    .line 3333
    .end local v0    # "MBPS":I
    .end local v15    # "FS":I
    .restart local v24    # "FS":I
    .restart local v27    # "MBPS":I
    :sswitch_28
    const/16 v28, 0x1

    .line 3334
    const/16 v17, 0xf

    const/16 v18, 0xb

    const/16 v21, 0x9

    const/16 v0, 0x5cd

    .end local v27    # "MBPS":I
    .restart local v0    # "MBPS":I
    const/16 v15, 0x63

    .end local v24    # "FS":I
    .restart local v15    # "FS":I
    const/16 v16, 0x40

    move/from16 v24, v16

    move-object/from16 v16, v7

    move/from16 v7, v24

    move-object/from16 v27, v8

    move-object/from16 v24, v11

    move/from16 v11, v17

    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, v18

    .line 3408
    .end local v17    # "FR":I
    .end local v18    # "W":I
    .end local v21    # "H":I
    .local v7, "BR":I
    .local v8, "H":I
    .local v9, "W":I
    .local v11, "FR":I
    .local v16, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_7
    if-eqz v29, :cond_6

    .line 3409
    and-int/lit8 v17, v25, -0x5

    .end local v25    # "errors":I
    .local v17, "errors":I
    goto :goto_8

    .line 3408
    .end local v17    # "errors":I
    .restart local v25    # "errors":I
    :cond_6
    move/from16 v17, v25

    .line 3411
    .end local v25    # "errors":I
    .restart local v17    # "errors":I
    :goto_8
    move-object/from16 v33, v12

    move-object/from16 v32, v13

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v13    # "mime":Ljava/lang/String;
    .local v32, "mime":Ljava/lang/String;
    .local v33, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    int-to-long v12, v0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 3412
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3413
    mul-int/lit16 v12, v7, 0x3e8

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3414
    if-eqz v28, :cond_7

    .line 3415
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3416
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3417
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v14, v12

    .end local v14    # "maxRate":I
    .local v12, "maxRate":I
    goto :goto_9

    .line 3420
    .end local v12    # "maxRate":I
    .restart local v14    # "maxRate":I
    :cond_7
    mul-int/lit8 v12, v15, 0x2

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 3421
    .local v12, "maxDim":I
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3422
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3423
    const/16 v13, 0x3c

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v14, v13

    .line 3325
    .end local v0    # "MBPS":I
    .end local v7    # "BR":I
    .end local v8    # "H":I
    .end local v9    # "W":I
    .end local v11    # "FR":I
    .end local v12    # "maxDim":I
    .end local v15    # "FS":I
    .end local v16    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v28    # "strict":Z
    .end local v29    # "supported":Z
    :goto_9
    add-int/lit8 v0, v31, 0x1

    move/from16 v11, v17

    move-object/from16 v25, v21

    move/from16 v9, v26

    move-object/from16 v26, v27

    move-object/from16 v13, v32

    move-object/from16 v12, v33

    move-object/from16 v27, v6

    move v6, v0

    move-object/from16 v0, p0

    goto/16 :goto_6

    .line 3426
    .end local v17    # "errors":I
    .end local v32    # "mime":Ljava/lang/String;
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v11, "errors":I
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v13    # "mime":Ljava/lang/String;
    :cond_8
    move/from16 v25, v11

    move-object/from16 v33, v12

    move-object/from16 v32, v13

    .end local v11    # "errors":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v13    # "mime":Ljava/lang/String;
    .restart local v25    # "errors":I
    .restart local v32    # "mime":Ljava/lang/String;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3430
    iget-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v6

    iput-object v6, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 3431
    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    .end local v14    # "maxRate":I
    move-object v6, v0

    move v1, v10

    move/from16 v16, v25

    move/from16 v12, v30

    goto/16 :goto_1c

    .end local v10    # "maxBps":I
    .end local v25    # "errors":I
    .end local v32    # "mime":Ljava/lang/String;
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "maxBlocksPerSecond":J
    .local v4, "maxBps":I
    .restart local v5    # "errors":I
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v13    # "mime":Ljava/lang/String;
    :cond_9
    move-object/from16 v33, v12

    move-object/from16 v32, v13

    move-object/from16 v21, v25

    move-object/from16 v6, v27

    move-object/from16 v27, v26

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v13    # "mime":Ljava/lang/String;
    .restart local v32    # "mime":Ljava/lang/String;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v7, "video/3gpp"

    .end local v32    # "mime":Ljava/lang/String;
    .restart local v13    # "mime":Ljava/lang/String;
    invoke-virtual {v13, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3432
    const/16 v7, 0xb

    .local v7, "maxWidth":I
    const/16 v8, 0x9

    .local v8, "maxHeight":I
    const/16 v9, 0xf

    .line 3433
    .local v9, "maxRate":I
    move v10, v7

    .local v10, "minWidth":I
    move v11, v8

    .line 3434
    .local v11, "minHeight":I
    const/16 v12, 0x10

    .line 3435
    .local v12, "minAlignment":I
    const/16 v3, 0x63

    .line 3436
    const-wide/16 v1, 0x5cd

    .line 3437
    const v4, 0xfa00

    .line 3438
    move-object/from16 v14, v33

    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v15, v14

    move/from16 v18, v12

    move v12, v4

    move v4, v8

    move/from16 v8, v18

    move/from16 v18, v5

    move v5, v3

    move v3, v7

    move v7, v9

    const/4 v9, 0x0

    .end local v9    # "maxRate":I
    .local v3, "maxWidth":I
    .local v4, "maxHeight":I
    .local v5, "maxBlocks":I
    .local v7, "maxRate":I
    .local v8, "minAlignment":I
    .local v12, "maxBps":I
    .local v18, "errors":I
    :goto_a
    if-ge v9, v15, :cond_e

    move/from16 v19, v8

    .end local v8    # "minAlignment":I
    .local v19, "minAlignment":I
    aget-object v8, v14, v9

    .line 3439
    .local v8, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v20, 0x0

    .local v20, "MBPS":I
    const/16 v25, 0x0

    .local v25, "BR":I
    const/16 v26, 0x0

    .local v26, "FR":I
    const/16 v28, 0x0

    .local v28, "W":I
    const/16 v29, 0x0

    .local v29, "H":I
    move/from16 v31, v10

    .local v31, "minW":I
    move/from16 v32, v11

    .line 3440
    .local v32, "minH":I
    const/16 v33, 0x0

    .line 3441
    .local v33, "strict":Z
    move/from16 v34, v9

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v9, :sswitch_data_5

    .line 3476
    move/from16 v35, v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v15, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v15, v27

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v27, v6

    iget v6, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v9, v21

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v15

    move-object/from16 v15, v24

    invoke-static {v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    or-int/lit8 v18, v18, 0x1

    move/from16 v6, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_d

    .line 3473
    :sswitch_29
    const/16 v31, 0x1

    const/16 v32, 0x1

    const/4 v9, 0x4

    .line 3474
    .end local v19    # "minAlignment":I
    .local v9, "minAlignment":I
    const/16 v26, 0x3c

    const/16 v28, 0x2d

    const/16 v29, 0x24

    const/16 v25, 0x100

    mul-int v19, v28, v29

    mul-int/lit8 v20, v19, 0x32

    move/from16 v19, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v19

    move/from16 v19, v9

    move/from16 v35, v15

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_d

    .line 3469
    .end local v9    # "minAlignment":I
    .restart local v19    # "minAlignment":I
    :sswitch_2a
    const/16 v31, 0x1

    const/16 v32, 0x1

    const/4 v9, 0x4

    .line 3470
    .end local v19    # "minAlignment":I
    .restart local v9    # "minAlignment":I
    const/16 v26, 0x3c

    const/16 v28, 0x2d

    const/16 v29, 0x12

    const/16 v25, 0x80

    mul-int v19, v28, v29

    mul-int/lit8 v20, v19, 0x32

    move/from16 v19, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v19

    move/from16 v19, v9

    move/from16 v35, v15

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_d

    .line 3465
    .end local v9    # "minAlignment":I
    .restart local v19    # "minAlignment":I
    :sswitch_2b
    const/16 v31, 0x1

    const/16 v32, 0x1

    const/4 v9, 0x4

    .line 3466
    .end local v19    # "minAlignment":I
    .restart local v9    # "minAlignment":I
    const/16 v26, 0x3c

    const/16 v28, 0x16

    const/16 v29, 0x12

    const/16 v25, 0x40

    mul-int v19, v28, v29

    mul-int/lit8 v20, v19, 0x32

    move/from16 v19, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v19

    move/from16 v19, v9

    move/from16 v35, v15

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_d

    .line 3456
    .end local v9    # "minAlignment":I
    .restart local v19    # "minAlignment":I
    :sswitch_2c
    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v35, v15

    move/from16 v15, v17

    if-eq v9, v15, :cond_b

    iget v9, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v15, 0x4

    if-ne v9, v15, :cond_a

    goto :goto_b

    :cond_a
    const/4 v15, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v15, 0x1

    :goto_c
    move/from16 v33, v15

    .line 3459
    if-nez v33, :cond_c

    .line 3460
    const/16 v31, 0x1

    const/16 v32, 0x1

    const/4 v9, 0x4

    move/from16 v19, v9

    .line 3462
    :cond_c
    const/16 v26, 0xf

    const/16 v28, 0xb

    const/16 v29, 0x9

    const/16 v25, 0x2

    mul-int v9, v28, v29

    mul-int v20, v9, v26

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_d

    .line 3452
    :sswitch_2d
    move/from16 v35, v15

    const/16 v33, 0x1

    .line 3453
    const/16 v26, 0x1e

    const/16 v28, 0x16

    const/16 v29, 0x12

    const/16 v25, 0x20

    mul-int v9, v28, v29

    mul-int v20, v9, v26

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto/16 :goto_d

    .line 3449
    :sswitch_2e
    move/from16 v35, v15

    const/16 v33, 0x1

    .line 3450
    const/16 v26, 0x1e

    const/16 v28, 0x16

    const/16 v29, 0x12

    const/16 v25, 0x6

    mul-int v9, v28, v29

    mul-int v20, v9, v26

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto :goto_d

    .line 3446
    :sswitch_2f
    move/from16 v35, v15

    const/16 v33, 0x1

    .line 3447
    const/16 v26, 0x1e

    const/16 v28, 0x16

    const/16 v29, 0x12

    const/16 v25, 0x2

    mul-int v9, v28, v29

    mul-int/lit8 v20, v9, 0xf

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    goto :goto_d

    .line 3443
    :sswitch_30
    move/from16 v35, v15

    const/16 v33, 0x1

    .line 3444
    const/16 v26, 0xf

    const/16 v28, 0xb

    const/16 v29, 0x9

    const/16 v25, 0x1

    mul-int v9, v28, v29

    mul-int v20, v9, v26

    move/from16 v9, v33

    move-object/from16 v33, v14

    move/from16 v14, v26

    move/from16 v26, v9

    move-object/from16 v9, v21

    move-object/from16 v15, v24

    move-object/from16 v21, v27

    move-object/from16 v27, v6

    move/from16 v24, v10

    move/from16 v6, v20

    move/from16 v10, v29

    move/from16 v20, v11

    move/from16 v11, v28

    .line 3480
    .end local v28    # "W":I
    .end local v29    # "H":I
    .local v6, "MBPS":I
    .local v10, "H":I
    .local v11, "W":I
    .local v14, "FR":I
    .local v20, "minHeight":I
    .local v24, "minWidth":I
    .local v26, "strict":Z
    .local v33, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_d
    move/from16 v28, v7

    .end local v7    # "maxRate":I
    .local v28, "maxRate":I
    iget v7, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v7, :sswitch_data_6

    .line 3492
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v14

    move-object/from16 v14, v22

    .end local v14    # "FR":I
    .local v29, "FR":I
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v14, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    or-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 3490
    .end local v29    # "FR":I
    .restart local v14    # "FR":I
    :sswitch_31
    move/from16 v29, v14

    .line 3496
    .end local v14    # "FR":I
    .restart local v29    # "FR":I
    :goto_e
    if-eqz v26, :cond_d

    .line 3501
    const/16 v31, 0xb

    const/16 v32, 0x9

    move/from16 v14, v31

    move/from16 v7, v32

    goto :goto_f

    .line 3506
    :cond_d
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    move/from16 v14, v31

    move/from16 v7, v32

    .line 3508
    .end local v31    # "minW":I
    .end local v32    # "minH":I
    .local v7, "minH":I
    .local v14, "minW":I
    :goto_f
    and-int/lit8 v18, v18, -0x5

    .line 3509
    move-object/from16 v31, v8

    move-object/from16 v32, v9

    .end local v8    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v31, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    int-to-long v8, v6

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3510
    mul-int v8, v11, v10

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3511
    const v8, 0xfa00

    mul-int v8, v8, v25

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 3512
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3513
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3514
    move/from16 v9, v28

    move/from16 v8, v29

    .end local v28    # "maxRate":I
    .end local v29    # "FR":I
    .local v8, "FR":I
    .local v9, "maxRate":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 3515
    move-wide/from16 v28, v1

    move/from16 v1, v24

    .end local v24    # "minWidth":I
    .local v1, "minWidth":I
    .local v28, "maxBlocksPerSecond":J
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3516
    move/from16 v2, v20

    .end local v20    # "minHeight":I
    .local v2, "minHeight":I
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3438
    .end local v2    # "minHeight":I
    .end local v6    # "MBPS":I
    .end local v7    # "minH":I
    .end local v8    # "FR":I
    .end local v10    # "H":I
    .end local v14    # "minW":I
    .end local v25    # "BR":I
    .end local v26    # "strict":Z
    .end local v31    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v11, "minHeight":I
    add-int/lit8 v2, v34, 0x1

    move v10, v1

    move v7, v9

    move-object/from16 v24, v15

    move/from16 v8, v19

    move-object/from16 v6, v27

    move-object/from16 v14, v33

    move/from16 v15, v35

    const/16 v17, 0x1

    move v9, v2

    move-object/from16 v27, v21

    move-wide/from16 v1, v28

    move-object/from16 v21, v32

    goto/16 :goto_a

    .line 3520
    .end local v9    # "maxRate":I
    .end local v19    # "minAlignment":I
    .end local v28    # "maxBlocksPerSecond":J
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "maxBlocksPerSecond":J
    .local v7, "maxRate":I
    .local v8, "minAlignment":I
    .local v10, "minWidth":I
    .local v14, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_e
    move v9, v7

    move/from16 v19, v8

    move-object/from16 v33, v14

    move-wide v6, v1

    move v1, v10

    move v2, v11

    .end local v7    # "maxRate":I
    .end local v8    # "minAlignment":I
    .end local v10    # "minWidth":I
    .end local v11    # "minHeight":I
    .end local v14    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "minWidth":I
    .restart local v2    # "minHeight":I
    .local v6, "maxBlocksPerSecond":J
    .restart local v9    # "maxRate":I
    .restart local v19    # "minAlignment":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget-boolean v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-nez v8, :cond_f

    .line 3521
    new-instance v8, Landroid/util/Rational;

    const/16 v10, 0xb

    const/16 v11, 0x9

    invoke-direct {v8, v10, v11}, Landroid/util/Rational;-><init>(II)V

    new-instance v14, Landroid/util/Rational;

    invoke-direct {v14, v10, v11}, Landroid/util/Rational;-><init>(II)V

    .line 3522
    invoke-static {v8, v14}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    iput-object v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3524
    :cond_f
    const/16 v8, 0x10

    move/from16 v28, v9

    .end local v9    # "maxRate":I
    .local v28, "maxRate":I
    const/16 v9, 0x10

    move/from16 v11, v19

    move/from16 v10, v19

    move-object/from16 v14, v23

    .end local v19    # "minAlignment":I
    .local v10, "minAlignment":I
    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 3530
    .end local v10    # "minAlignment":I
    .restart local v19    # "minAlignment":I
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    iput-object v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 3531
    .end local v1    # "minWidth":I
    .end local v2    # "minHeight":I
    .end local v3    # "maxWidth":I
    .end local v4    # "maxHeight":I
    .end local v19    # "minAlignment":I
    .end local v28    # "maxRate":I
    move v3, v5

    move-wide v4, v6

    move v1, v12

    move/from16 v16, v18

    move/from16 v12, v30

    move-object v6, v0

    goto/16 :goto_1c

    .end local v6    # "maxBlocksPerSecond":J
    .end local v12    # "maxBps":I
    .end local v18    # "errors":I
    .local v1, "maxBlocksPerSecond":J
    .local v3, "maxBlocks":I
    .local v4, "maxBps":I
    .local v5, "errors":I
    :cond_10
    move-object/from16 v32, v21

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    const-string v6, "video/x-vnd.on2.vp8"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 3532
    const v3, 0x7fffffff

    .line 3533
    move v6, v4

    move v7, v5

    .end local v4    # "maxBps":I
    .end local v5    # "errors":I
    .local v6, "maxBps":I
    .local v7, "errors":I
    const-wide/32 v4, 0x7fffffff

    .line 3536
    .end local v1    # "maxBlocksPerSecond":J
    .local v4, "maxBlocksPerSecond":J
    const v10, 0x5f5e100

    .line 3540
    .end local v6    # "maxBps":I
    .local v10, "maxBps":I
    move-object/from16 v12, v33

    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v1, v12

    move v11, v7

    const/4 v2, 0x0

    .end local v7    # "errors":I
    .local v11, "errors":I
    :goto_10
    if-ge v2, v1, :cond_11

    aget-object v6, v12, v2

    .line 3541
    .local v6, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v7, :sswitch_data_7

    .line 3548
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v18

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v9, v32

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    or-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 3546
    :sswitch_32
    move-object/from16 v8, v18

    move-object/from16 v9, v32

    .line 3552
    :goto_11
    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v7, :pswitch_data_3

    .line 3556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v17, v1

    iget v1, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    or-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 3554
    :pswitch_9
    move/from16 v17, v1

    move-object/from16 v0, v22

    .line 3560
    :goto_12
    and-int/lit8 v11, v11, -0x5

    .line 3540
    .end local v6    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v22, v0

    move-object/from16 v18, v8

    move-object/from16 v32, v9

    move/from16 v1, v17

    move-object/from16 v0, p0

    goto :goto_10

    .line 3563
    :cond_11
    const/16 v15, 0x10

    .line 3564
    .local v15, "blockSize":I
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v1, 0x7fff

    const/16 v2, 0x7fff

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3567
    .end local v15    # "blockSize":I
    move-object/from16 v6, p0

    move v1, v10

    move/from16 v16, v11

    move-object/from16 v33, v12

    move-object/from16 v23, v14

    move/from16 v12, v30

    goto/16 :goto_1c

    .end local v10    # "maxBps":I
    .end local v11    # "errors":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v1    # "maxBlocksPerSecond":J
    .local v4, "maxBps":I
    .restart local v5    # "errors":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_12
    move v6, v4

    move v7, v5

    move-object/from16 v8, v18

    move-object/from16 v0, v22

    move-object/from16 v9, v32

    move-object/from16 v12, v33

    .end local v4    # "maxBps":I
    .end local v5    # "errors":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v6, "maxBps":I
    .restart local v7    # "errors":I
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v4, "video/x-vnd.on2.vp9"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3568
    const-wide/32 v1, 0xca800

    .line 3569
    const v3, 0x9000

    .line 3570
    const v4, 0x30d40

    .line 3571
    .end local v6    # "maxBps":I
    .restart local v4    # "maxBps":I
    const/16 v6, 0x200

    .line 3573
    .local v6, "maxDim":I
    array-length v11, v12

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    move/from16 v16, v7

    const/4 v7, 0x0

    .end local v7    # "errors":I
    .local v3, "maxBps":I
    .local v4, "maxBlocks":I
    .local v16, "errors":I
    :goto_13
    if-ge v7, v11, :cond_13

    aget-object v5, v12, v7

    .line 3574
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v20, 0x0

    .line 3575
    .local v20, "SR":J
    const/16 v22, 0x0

    .line 3576
    .restart local v22    # "FS":I
    const/16 v23, 0x0

    .line 3577
    .local v23, "BR":I
    const/16 v24, 0x0

    .line 3578
    .local v24, "D":I
    iget v10, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v10, :sswitch_data_8

    .line 3608
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v26, v7

    iget v7, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    or-int/lit8 v16, v16, 0x1

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v7, v23

    move-object/from16 v23, v14

    move v14, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3606
    :sswitch_33
    const-wide v20, 0x118800000L

    const/high16 v22, 0x2200000

    const v23, 0x75300

    const/16 v24, 0x41c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3604
    :sswitch_34
    const-wide v20, 0x8c400000L

    const/high16 v22, 0x2200000

    const v23, 0x3a980

    const/16 v24, 0x41c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3602
    :sswitch_35
    const-wide/32 v20, 0x46200000

    const/high16 v22, 0x2200000

    const v23, 0x2bf20

    const/16 v24, 0x41c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3600
    :sswitch_36
    const-wide/32 v20, 0x46200000

    const/high16 v22, 0x880000

    const v23, 0x2bf20

    const/16 v24, 0x20c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3598
    :sswitch_37
    const-wide/32 v20, 0x23100000

    const/high16 v22, 0x880000

    const v23, 0x1d4c0

    const/16 v24, 0x20c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3596
    :sswitch_38
    const-wide/32 v20, 0x12980000

    const/high16 v22, 0x880000

    const v23, 0xea60

    const/16 v24, 0x20c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3594
    :sswitch_39
    const-wide/32 v20, 0x9900000

    const/high16 v22, 0x220000

    const/16 v23, 0x7530

    const/16 v24, 0x1040

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3592
    :sswitch_3a
    const-wide/32 v20, 0x4fb0000

    const/high16 v22, 0x220000

    const/16 v23, 0x4650

    const/16 v24, 0x1040

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3590
    :sswitch_3b
    const-wide/32 v20, 0x2328000

    const/high16 v22, 0xf0000

    const/16 v23, 0x2ee0

    const/16 v24, 0xac0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3588
    :sswitch_3c
    const-wide/32 v20, 0x13c6800

    const v22, 0x87000

    const/16 v23, 0x1c20

    const/16 v24, 0x800

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3586
    :sswitch_3d
    const-wide/32 v20, 0x8ca000

    const v22, 0x3c000

    const/16 v23, 0xe10

    const/16 v24, 0x540

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto/16 :goto_14

    .line 3584
    :sswitch_3e
    const-wide/32 v20, 0x465000

    const v22, 0x1e000

    const/16 v23, 0x708

    const/16 v24, 0x3c0

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto :goto_14

    .line 3582
    :sswitch_3f
    const-wide/32 v20, 0x2a3000

    const v22, 0x12000

    const/16 v23, 0x320

    const/16 v24, 0x300

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    goto :goto_14

    .line 3580
    :sswitch_40
    const-wide/32 v20, 0xca800

    const v22, 0x9000

    const/16 v23, 0xc8

    const/16 v24, 0x200

    move-wide/from16 v36, v20

    move/from16 v20, v11

    move-wide/from16 v10, v36

    move/from16 v26, v23

    move-object/from16 v23, v14

    move/from16 v14, v26

    move/from16 v26, v7

    move-object/from16 v21, v8

    move/from16 v7, v22

    move/from16 v8, v24

    .line 3612
    .end local v20    # "SR":J
    .end local v22    # "FS":I
    .end local v23    # "BR":I
    .end local v24    # "D":I
    .local v7, "FS":I
    .local v8, "D":I
    .local v10, "SR":J
    .local v14, "BR":I
    :goto_14
    move-object/from16 v33, v12

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v12, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v12, :sswitch_data_9

    .line 3623
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v22, v0

    iget v0, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    or-int/lit8 v16, v16, 0x1

    goto :goto_15

    .line 3621
    :sswitch_41
    move-object/from16 v22, v0

    .line 3627
    :goto_15
    and-int/lit8 v16, v16, -0x5

    .line 3628
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3629
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3630
    mul-int/lit16 v0, v14, 0x3e8

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3631
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3573
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v7    # "FS":I
    .end local v8    # "D":I
    .end local v10    # "SR":J
    .end local v14    # "BR":I
    add-int/lit8 v7, v26, 0x1

    move/from16 v11, v20

    move-object/from16 v8, v21

    move-object/from16 v0, v22

    move-object/from16 v14, v23

    move-object/from16 v12, v33

    goto/16 :goto_13

    .line 3634
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_13
    move-object/from16 v33, v12

    move-object/from16 v23, v14

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v10, 0x8

    .line 3635
    .local v10, "blockSize":I
    const/16 v0, 0x8

    invoke-static {v6, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .line 3636
    .local v0, "maxLengthInBlocks":I
    const/16 v5, 0x40

    invoke-static {v4, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 3637
    const-wide/16 v7, 0x40

    invoke-static {v1, v2, v7, v8}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v1

    .line 3639
    const/4 v8, 0x1

    const/4 v9, 0x1

    move v5, v6

    .end local v6    # "maxDim":I
    .local v5, "maxDim":I
    const/16 v6, 0x8

    const/16 v7, 0x8

    move v11, v3

    move v3, v4

    move-wide/from16 v36, v1

    move v1, v5

    move-wide/from16 v4, v36

    .end local v5    # "maxDim":I
    .local v1, "maxDim":I
    .local v3, "maxBlocks":I
    .local v4, "maxBlocksPerSecond":J
    .local v11, "maxBps":I
    move v2, v0

    move v12, v11

    move v11, v1

    move v1, v0

    move-object/from16 v0, p0

    .end local v0    # "maxLengthInBlocks":I
    .local v1, "maxLengthInBlocks":I
    .local v11, "maxDim":I
    .local v12, "maxBps":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3644
    .end local v1    # "maxLengthInBlocks":I
    .end local v10    # "blockSize":I
    .end local v11    # "maxDim":I
    move-object/from16 v6, p0

    move v1, v12

    move/from16 v12, v30

    goto/16 :goto_1c

    .end local v4    # "maxBlocksPerSecond":J
    .end local v16    # "errors":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "maxBlocksPerSecond":J
    .local v6, "maxBps":I
    .local v7, "errors":I
    .local v12, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_14
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    move-object/from16 v33, v12

    move-object/from16 v23, v14

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v0, "video/hevc"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3646
    const/16 v0, 0x240

    .line 3647
    .end local v3    # "maxBlocks":I
    .local v0, "maxBlocks":I
    mul-int/lit8 v3, v0, 0xf

    int-to-long v1, v3

    .line 3648
    const v3, 0x1f400

    .line 3649
    .end local v6    # "maxBps":I
    .local v3, "maxBps":I
    move-object/from16 v12, v33

    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    array-length v4, v12

    move v10, v3

    move v11, v7

    move v3, v0

    const/4 v0, 0x0

    .end local v0    # "maxBlocks":I
    .end local v7    # "errors":I
    .local v3, "maxBlocks":I
    .local v10, "maxBps":I
    .local v11, "errors":I
    :goto_16
    if-ge v0, v4, :cond_15

    aget-object v5, v12, v0

    .line 3650
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v6, 0x0

    .line 3651
    .local v6, "FR":D
    const/4 v8, 0x0

    .line 3652
    .local v8, "FS":I
    const/4 v14, 0x0

    .line 3653
    .restart local v14    # "BR":I
    move/from16 v16, v0

    iget v0, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_a

    .line 3706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    move-object/from16 v4, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v18, v6

    .end local v6    # "FR":D
    .local v18, "FR":D
    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    or-int/lit8 v11, v11, 0x1

    move-wide/from16 v6, v18

    goto/16 :goto_17

    .line 3704
    .end local v18    # "FR":D
    .restart local v6    # "FR":D
    :sswitch_42
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    const/high16 v8, 0x2200000

    const v14, 0xc3500

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3702
    :sswitch_43
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    const/high16 v8, 0x2200000

    const v14, 0x3a980

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3700
    :sswitch_44
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x2200000

    const v14, 0x75300

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3698
    :sswitch_45
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x2200000

    const v14, 0x1d4c0

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3696
    :sswitch_46
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x2200000

    const v14, 0x3a980

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3694
    :sswitch_47
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x2200000

    const v14, 0xea60

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3692
    :sswitch_48
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    const/high16 v8, 0x880000

    const v14, 0x3a980

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3690
    :sswitch_49
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    const/high16 v8, 0x880000

    const v14, 0xea60

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3688
    :sswitch_4a
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x880000

    const v14, 0x27100

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3686
    :sswitch_4b
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x880000

    const v14, 0x9c40

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3684
    :sswitch_4c
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x880000

    const v14, 0x186a0

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3682
    :sswitch_4d
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x880000

    const/16 v14, 0x61a8

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto/16 :goto_17

    .line 3680
    :sswitch_4e
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x220000

    const v14, 0xc350

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_17

    .line 3678
    :sswitch_4f
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/high16 v8, 0x220000

    const/16 v14, 0x4e20

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_17

    .line 3676
    :sswitch_50
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x220000

    const/16 v14, 0x7530

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_17

    .line 3674
    :sswitch_51
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const/high16 v8, 0x220000

    const/16 v14, 0x2ee0

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_17

    .line 3672
    :sswitch_52
    const-wide v6, 0x4040e00000000000L    # 33.75

    const/high16 v8, 0xf0000

    const/16 v14, 0x2710

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_17

    .line 3669
    :sswitch_53
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const v8, 0x87000

    const/16 v14, 0x1770

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_17

    .line 3666
    :sswitch_54
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const v8, 0x3c000

    const/16 v14, 0xbb8

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_17

    .line 3663
    :sswitch_55
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    const v8, 0x1e000

    const/16 v14, 0x5dc

    move/from16 v17, v4

    move-object/from16 v4, v21

    goto :goto_17

    .line 3660
    :sswitch_56
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    const v8, 0x9000

    const/16 v14, 0x80

    move/from16 v17, v4

    move-object/from16 v4, v21

    .line 3710
    :goto_17
    iget v0, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v0, :sswitch_data_b

    .line 3718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v6

    move-object/from16 v6, v22

    .end local v6    # "FR":D
    .restart local v18    # "FR":D
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    or-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 3716
    .end local v18    # "FR":D
    .restart local v6    # "FR":D
    :sswitch_57
    move-wide/from16 v18, v6

    move-object/from16 v6, v22

    .line 3730
    .end local v6    # "FR":D
    .restart local v18    # "FR":D
    :goto_18
    shr-int/lit8 v0, v8, 0x6

    .line 3731
    .end local v8    # "FS":I
    .local v0, "FS":I
    and-int/lit8 v11, v11, -0x5

    .line 3732
    int-to-double v7, v0

    mul-double v7, v7, v18

    double-to-int v7, v7

    int-to-long v7, v7

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3733
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3734
    mul-int/lit16 v7, v14, 0x3e8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3649
    .end local v0    # "FS":I
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v14    # "BR":I
    .end local v18    # "FR":D
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move/from16 v4, v17

    goto/16 :goto_16

    .line 3737
    :cond_15
    mul-int/lit8 v0, v3, 0x8

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 3738
    .local v0, "maxLengthInBlocks":I
    const/4 v8, 0x1

    const/4 v9, 0x1

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-wide v4, v1

    .end local v1    # "maxBlocksPerSecond":J
    .restart local v4    # "maxBlocksPerSecond":J
    move v2, v0

    move v1, v0

    move-object/from16 v0, p0

    .end local v0    # "maxLengthInBlocks":I
    .local v1, "maxLengthInBlocks":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3743
    .end local v1    # "maxLengthInBlocks":I
    move-object/from16 v6, p0

    move v1, v10

    move/from16 v16, v11

    move-object/from16 v33, v12

    move/from16 v12, v30

    goto/16 :goto_1c

    .end local v4    # "maxBlocksPerSecond":J
    .end local v10    # "maxBps":I
    .end local v11    # "errors":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v1, "maxBlocksPerSecond":J
    .local v6, "maxBps":I
    .restart local v7    # "errors":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_16
    move v0, v6

    move-object/from16 v4, v21

    move-object/from16 v6, v22

    move-object/from16 v12, v33

    .end local v6    # "maxBps":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "maxBps":I
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-string v5, "video/av01"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 3744
    const-wide/32 v1, 0xca800

    .line 3745
    const v3, 0x9000

    .line 3746
    const v0, 0x30d40

    .line 3747
    const/16 v5, 0x200

    .line 3753
    .local v5, "maxDim":I
    array-length v8, v12

    move v10, v0

    move v11, v5

    move v14, v7

    const/4 v0, 0x0

    .end local v0    # "maxBps":I
    .end local v5    # "maxDim":I
    .end local v7    # "errors":I
    .restart local v10    # "maxBps":I
    .local v11, "maxDim":I
    .local v14, "errors":I
    :goto_19
    if-ge v0, v8, :cond_17

    aget-object v5, v12, v0

    .line 3754
    .local v5, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v20, 0x0

    .line 3755
    .restart local v20    # "SR":J
    const/4 v7, 0x0

    .line 3756
    .local v7, "FS":I
    const/16 v16, 0x0

    .line 3757
    .local v16, "BR":I
    const/16 v22, 0x0

    .line 3758
    .local v22, "D":I
    move/from16 v24, v0

    iget v0, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v0, :sswitch_data_c

    .line 3799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v26, v4

    iget v4, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    or-int/lit8 v14, v14, 0x1

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3796
    :sswitch_58
    const-wide v20, 0x118800000L

    const/high16 v7, 0x2200000

    const v16, 0x27100

    const/16 v22, 0x4000

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3794
    :sswitch_59
    const-wide v20, 0x105090000L

    const/high16 v7, 0x2200000

    const v16, 0x27100

    const/16 v22, 0x4000

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3792
    :sswitch_5a
    const-wide v20, 0x82848000L

    const/high16 v7, 0x2200000

    const v16, 0x186a0

    const/16 v22, 0x4000

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3790
    :sswitch_5b
    const-wide/32 v20, 0x46200000

    const/high16 v7, 0x2200000

    const v16, 0xea60

    const/16 v22, 0x4000

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3787
    :sswitch_5c
    const-wide/32 v20, 0x46200000

    const/high16 v7, 0x880000

    const v16, 0xea60

    const/16 v22, 0x2000

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3785
    :sswitch_5d
    const-wide/32 v20, 0x41424000

    const/high16 v7, 0x880000

    const v16, 0xea60

    const/16 v22, 0x2000

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3783
    :sswitch_5e
    const-wide/32 v20, 0x20a12000

    const/high16 v7, 0x880000

    const v16, 0x9c40

    const/16 v22, 0x2000

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3781
    :sswitch_5f
    const-wide/32 v20, 0x10509000

    const/high16 v7, 0x880000

    const/16 v16, 0x7530

    const/16 v22, 0x2000

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3778
    :sswitch_60
    const-wide/32 v20, 0x9480000

    const/high16 v7, 0x240000

    const/16 v16, 0x4e20

    const/16 v22, 0x1800

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto/16 :goto_1a

    .line 3774
    :sswitch_61
    const-wide/32 v20, 0x4a40000

    const/high16 v7, 0x240000

    const/16 v16, 0x2ee0

    const/16 v22, 0x1800

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto :goto_1a

    .line 3771
    :sswitch_62
    const-wide/32 v20, 0x2616960

    const v7, 0x104040

    const/16 v16, 0x2710

    const/16 v22, 0x1580

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto :goto_1a

    .line 3767
    :sswitch_63
    const-wide/32 v20, 0x17d0180

    const v7, 0xa2900

    const/16 v16, 0x1770

    const/16 v22, 0x1100

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto :goto_1a

    .line 3764
    :sswitch_64
    const-wide/32 v20, 0x9f8580

    const v7, 0x44100

    const/16 v16, 0xbb8

    const/16 v22, 0xb00

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    goto :goto_1a

    .line 3760
    :sswitch_65
    const-wide/32 v20, 0x546000

    const v7, 0x24000

    const/16 v16, 0x5dc

    const/16 v22, 0x800

    move-object/from16 v26, v4

    move-object/from16 v33, v12

    move/from16 v0, v16

    move/from16 v4, v22

    move/from16 v16, v11

    move-wide/from16 v11, v20

    .line 3803
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v20    # "SR":J
    .end local v22    # "D":I
    .local v0, "BR":I
    .local v4, "D":I
    .local v11, "SR":J
    .local v16, "maxDim":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :goto_1a
    move/from16 v20, v8

    iget v8, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_d

    .line 3810
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v22, v6

    iget v6, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    or-int/lit8 v14, v14, 0x1

    goto :goto_1b

    .line 3808
    :sswitch_66
    move-object/from16 v22, v6

    .line 3814
    :goto_1b
    and-int/lit8 v14, v14, -0x5

    .line 3815
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3816
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3817
    mul-int/lit16 v6, v0, 0x3e8

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3818
    move/from16 v6, v16

    .end local v16    # "maxDim":I
    .local v6, "maxDim":I
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 3753
    .end local v0    # "BR":I
    .end local v4    # "D":I
    .end local v5    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v6    # "maxDim":I
    .end local v7    # "FS":I
    .local v11, "maxDim":I
    add-int/lit8 v0, v24, 0x1

    move/from16 v8, v20

    move-object/from16 v6, v22

    move-object/from16 v4, v26

    move-object/from16 v12, v33

    goto/16 :goto_19

    .line 3821
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_17
    move v6, v11

    move-object/from16 v33, v12

    .end local v11    # "maxDim":I
    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v6    # "maxDim":I
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v11, 0x8

    .line 3822
    .local v11, "blockSize":I
    const/16 v0, 0x8

    invoke-static {v6, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .line 3823
    .local v0, "maxLengthInBlocks":I
    const/16 v5, 0x40

    invoke-static {v3, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    .line 3824
    const-wide/16 v7, 0x40

    invoke-static {v1, v2, v7, v8}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v4

    .line 3825
    .end local v1    # "maxBlocksPerSecond":J
    .local v4, "maxBlocksPerSecond":J
    const/4 v8, 0x1

    const/4 v9, 0x1

    move/from16 v16, v6

    .end local v6    # "maxDim":I
    .restart local v16    # "maxDim":I
    const/16 v6, 0x8

    const/16 v7, 0x8

    move v2, v0

    move v1, v0

    move-object/from16 v0, p0

    .end local v0    # "maxLengthInBlocks":I
    .local v1, "maxLengthInBlocks":I
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 3830
    move-object v6, v0

    .end local v1    # "maxLengthInBlocks":I
    .end local v11    # "blockSize":I
    .end local v16    # "maxDim":I
    move v1, v10

    move/from16 v16, v14

    move/from16 v12, v30

    goto :goto_1c

    .line 3831
    .end local v4    # "maxBlocksPerSecond":J
    .end local v10    # "maxBps":I
    .end local v14    # "errors":I
    .end local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .local v0, "maxBps":I
    .local v1, "maxBlocksPerSecond":J
    .local v7, "errors":I
    .restart local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_18
    move-object/from16 v6, p0

    move-object/from16 v33, v12

    .end local v12    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .restart local v33    # "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported mime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    const v0, 0xfa00

    .line 3835
    or-int/lit8 v16, v7, 0x2

    move-wide v4, v1

    move/from16 v12, v30

    move v1, v0

    .line 3837
    .end local v0    # "maxBps":I
    .end local v7    # "errors":I
    .end local v30    # "maxDPBBlocks":I
    .local v1, "maxBps":I
    .restart local v4    # "maxBlocksPerSecond":J
    .local v12, "maxDPBBlocks":I
    .local v16, "errors":I
    :goto_1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v14, v23

    invoke-static {v14, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 3838
    iget-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v2, v2, v16

    iput v2, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 3839
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_12
        0x4 -> :sswitch_11
        0x8 -> :sswitch_10
        0x10 -> :sswitch_f
        0x20 -> :sswitch_e
        0x40 -> :sswitch_d
        0x80 -> :sswitch_c
        0x100 -> :sswitch_b
        0x200 -> :sswitch_a
        0x400 -> :sswitch_9
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_7
        0x2000 -> :sswitch_6
        0x4000 -> :sswitch_5
        0x8000 -> :sswitch_4
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_17
        0x4 -> :sswitch_16
        0x8 -> :sswitch_15
        0x10 -> :sswitch_14
        0x20 -> :sswitch_16
        0x40 -> :sswitch_16
        0x10000 -> :sswitch_17
        0x80000 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_1f
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_1f
        0x10 -> :sswitch_1f
        0x20 -> :sswitch_1f
        0x40 -> :sswitch_1f
        0x80 -> :sswitch_1f
        0x100 -> :sswitch_1f
        0x200 -> :sswitch_1f
        0x400 -> :sswitch_1f
        0x800 -> :sswitch_1f
        0x1000 -> :sswitch_1f
        0x2000 -> :sswitch_1f
        0x4000 -> :sswitch_1f
        0x8000 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_1e
        0x4 -> :sswitch_1e
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_1c
        0x18 -> :sswitch_1b
        0x20 -> :sswitch_1a
        0x80 -> :sswitch_19
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_27
        0x4 -> :sswitch_26
        0x8 -> :sswitch_25
        0x10 -> :sswitch_24
        0x40 -> :sswitch_23
        0x80 -> :sswitch_22
        0x100 -> :sswitch_21
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_30
        0x2 -> :sswitch_2f
        0x4 -> :sswitch_2e
        0x8 -> :sswitch_2d
        0x10 -> :sswitch_2c
        0x20 -> :sswitch_2b
        0x40 -> :sswitch_2a
        0x80 -> :sswitch_29
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_31
        0x2 -> :sswitch_31
        0x4 -> :sswitch_31
        0x8 -> :sswitch_31
        0x10 -> :sswitch_31
        0x20 -> :sswitch_31
        0x40 -> :sswitch_31
        0x80 -> :sswitch_31
        0x100 -> :sswitch_31
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_32
        0x4 -> :sswitch_32
        0x8 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_40
        0x2 -> :sswitch_3f
        0x4 -> :sswitch_3e
        0x8 -> :sswitch_3d
        0x10 -> :sswitch_3c
        0x20 -> :sswitch_3b
        0x40 -> :sswitch_3a
        0x80 -> :sswitch_39
        0x100 -> :sswitch_38
        0x200 -> :sswitch_37
        0x400 -> :sswitch_36
        0x800 -> :sswitch_35
        0x1000 -> :sswitch_34
        0x2000 -> :sswitch_33
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        0x1 -> :sswitch_41
        0x2 -> :sswitch_41
        0x4 -> :sswitch_41
        0x8 -> :sswitch_41
        0x1000 -> :sswitch_41
        0x2000 -> :sswitch_41
        0x4000 -> :sswitch_41
        0x8000 -> :sswitch_41
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_56
        0x4 -> :sswitch_55
        0x8 -> :sswitch_55
        0x10 -> :sswitch_54
        0x20 -> :sswitch_54
        0x40 -> :sswitch_53
        0x80 -> :sswitch_53
        0x100 -> :sswitch_52
        0x200 -> :sswitch_52
        0x400 -> :sswitch_51
        0x800 -> :sswitch_50
        0x1000 -> :sswitch_4f
        0x2000 -> :sswitch_4e
        0x4000 -> :sswitch_4d
        0x8000 -> :sswitch_4c
        0x10000 -> :sswitch_4b
        0x20000 -> :sswitch_4a
        0x40000 -> :sswitch_49
        0x80000 -> :sswitch_48
        0x100000 -> :sswitch_47
        0x200000 -> :sswitch_46
        0x400000 -> :sswitch_45
        0x800000 -> :sswitch_44
        0x1000000 -> :sswitch_43
        0x2000000 -> :sswitch_42
    .end sparse-switch

    :sswitch_data_b
    .sparse-switch
        0x1 -> :sswitch_57
        0x2 -> :sswitch_57
        0x4 -> :sswitch_57
        0x1000 -> :sswitch_57
        0x2000 -> :sswitch_57
    .end sparse-switch

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_65
        0x2 -> :sswitch_64
        0x4 -> :sswitch_64
        0x8 -> :sswitch_64
        0x10 -> :sswitch_63
        0x20 -> :sswitch_62
        0x40 -> :sswitch_62
        0x80 -> :sswitch_62
        0x100 -> :sswitch_61
        0x200 -> :sswitch_60
        0x400 -> :sswitch_60
        0x800 -> :sswitch_60
        0x1000 -> :sswitch_5f
        0x2000 -> :sswitch_5e
        0x4000 -> :sswitch_5d
        0x8000 -> :sswitch_5c
        0x10000 -> :sswitch_5b
        0x20000 -> :sswitch_5a
        0x40000 -> :sswitch_59
        0x80000 -> :sswitch_58
    .end sparse-switch

    :sswitch_data_d
    .sparse-switch
        0x1 -> :sswitch_66
        0x2 -> :sswitch_66
        0x1000 -> :sswitch_66
        0x2000 -> :sswitch_66
    .end sparse-switch
.end method

.method private greylist-max-o applyMacroBlockLimits(IIIIIJIIII)V
    .locals 8
    .param p1, "minHorizontalBlocks"    # I
    .param p2, "minVerticalBlocks"    # I
    .param p3, "maxHorizontalBlocks"    # I
    .param p4, "maxVerticalBlocks"    # I
    .param p5, "maxBlocks"    # I
    .param p6, "maxBlocksPerSecond"    # J
    .param p8, "blockWidth"    # I
    .param p9, "blockHeight"    # I
    .param p10, "widthAlignment"    # I
    .param p11, "heightAlignment"    # I

    .line 3132
    move/from16 v6, p10

    move/from16 v7, p11

    invoke-direct {p0, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    .line 3133
    nop

    .line 3134
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 3135
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, v1, p4}, Landroid/util/Rational;-><init>(II)V

    new-instance v5, Landroid/util/Rational;

    invoke-direct {v5, p3, v1}, Landroid/util/Rational;-><init>(II)V

    .line 3136
    invoke-static {v2, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 3133
    move-object v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 3139
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v2, v2, p8

    .line 3141
    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v4, p8

    div-int v4, p3, v4

    .line 3142
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3140
    invoke-virtual {v1, v2, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3143
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v2, v2, p9

    .line 3145
    invoke-static {p2, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v5, v5, p9

    div-int v5, p4, v5

    .line 3146
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3144
    invoke-virtual {v1, v2, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3147
    return-void
.end method

.method private greylist-max-o applyMacroBlockLimits(IIIJIIII)V
    .locals 12
    .param p1, "maxHorizontalBlocks"    # I
    .param p2, "maxVerticalBlocks"    # I
    .param p3, "maxBlocks"    # I
    .param p4, "maxBlocksPerSecond"    # J
    .param p6, "blockWidth"    # I
    .param p7, "blockHeight"    # I
    .param p8, "widthAlignment"    # I
    .param p9, "heightAlignment"    # I

    .line 3119
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 3124
    return-void
.end method

.method public static greylist-max-p create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2636
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    .line 2637
    .local v0, "caps":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 2638
    return-object v0
.end method

.method public static greylist-max-o equivalentVP9Level(Landroid/media/MediaFormat;)I
    .locals 19
    .param p0, "info"    # Landroid/media/MediaFormat;

    .line 2795
    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 2797
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "block-size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v1, v2}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 2798
    .local v1, "blockSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    .line 2800
    .local v2, "BS":I
    const-string v4, "block-count-range"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    .line 2801
    .local v4, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/2addr v7, v2

    .line 2803
    .local v7, "FS":I
    :goto_0
    nop

    .line 2804
    const-string v8, "blocks-per-second-range"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    .line 2805
    .local v8, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-nez v8, :cond_1

    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_1
    int-to-long v9, v2

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    mul-long/2addr v9, v11

    .line 2807
    .local v9, "SR":J
    :goto_1
    nop

    .line 2808
    const-string v11, "size-range"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 2809
    .local v11, "dimensionRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-nez v11, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/util/Range;

    .line 2810
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/util/Range;

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2809
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2812
    .local v12, "D":I
    :goto_2
    const-string v13, "bitrate-range"

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v5}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    .line 2813
    .local v5, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v13, 0x3e8

    invoke-static {v6, v13}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    .line 2815
    .local v6, "BR":I
    :goto_3
    const-wide/32 v13, 0xca800

    cmp-long v13, v9, v13

    const/16 v14, 0x200

    if-gtz v13, :cond_4

    const v13, 0x9000

    if-gt v7, v13, :cond_4

    const/16 v13, 0xc8

    if-gt v6, v13, :cond_4

    if-gt v12, v14, :cond_4

    .line 2816
    const/4 v3, 0x1

    return v3

    .line 2817
    :cond_4
    const-wide/32 v15, 0x2a3000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_5

    const v13, 0x12000

    if-gt v7, v13, :cond_5

    const/16 v13, 0x320

    if-gt v6, v13, :cond_5

    const/16 v13, 0x300

    if-gt v12, v13, :cond_5

    .line 2818
    const/4 v3, 0x2

    return v3

    .line 2819
    :cond_5
    const-wide/32 v15, 0x465000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_6

    const v13, 0x1e000

    if-gt v7, v13, :cond_6

    const/16 v13, 0x708

    if-gt v6, v13, :cond_6

    const/16 v13, 0x3c0

    if-gt v12, v13, :cond_6

    .line 2820
    const/4 v3, 0x4

    return v3

    .line 2821
    :cond_6
    const-wide/32 v15, 0x8ca000

    cmp-long v13, v9, v15

    if-gtz v13, :cond_7

    const v13, 0x3c000

    if-gt v7, v13, :cond_7

    const/16 v13, 0xe10

    if-gt v6, v13, :cond_7

    const/16 v13, 0x540

    if-gt v12, v13, :cond_7

    .line 2822
    return v3

    .line 2823
    :cond_7
    const-wide/32 v15, 0x13c6800

    cmp-long v3, v9, v15

    const/16 v13, 0x800

    if-gtz v3, :cond_8

    const v3, 0x87000

    if-gt v7, v3, :cond_8

    const/16 v3, 0x1c20

    if-gt v6, v3, :cond_8

    if-gt v12, v13, :cond_8

    .line 2824
    const/16 v3, 0x10

    return v3

    .line 2825
    :cond_8
    const-wide/32 v15, 0x2328000

    cmp-long v3, v9, v15

    if-gtz v3, :cond_9

    const/high16 v3, 0xf0000

    if-gt v7, v3, :cond_9

    const/16 v3, 0x2ee0

    if-gt v6, v3, :cond_9

    const/16 v3, 0xac0

    if-gt v12, v3, :cond_9

    .line 2826
    const/16 v3, 0x20

    return v3

    .line 2827
    :cond_9
    const-wide/32 v15, 0x4fb0000

    cmp-long v3, v9, v15

    const/16 v15, 0x1040

    move/from16 v16, v13

    const/high16 v13, 0x220000

    if-gtz v3, :cond_a

    if-gt v7, v13, :cond_a

    const/16 v3, 0x4650

    if-gt v6, v3, :cond_a

    if-gt v12, v15, :cond_a

    .line 2828
    const/16 v3, 0x40

    return v3

    .line 2829
    :cond_a
    const-wide/32 v17, 0x9900000

    cmp-long v3, v9, v17

    if-gtz v3, :cond_b

    if-gt v7, v13, :cond_b

    const/16 v3, 0x7530

    if-gt v6, v3, :cond_b

    if-gt v12, v15, :cond_b

    .line 2830
    const/16 v3, 0x80

    return v3

    .line 2831
    :cond_b
    const-wide/32 v17, 0x12980000

    cmp-long v3, v9, v17

    const/16 v13, 0x20c0

    const/high16 v15, 0x880000

    if-gtz v3, :cond_c

    if-gt v7, v15, :cond_c

    const v3, 0xea60

    if-gt v6, v3, :cond_c

    if-gt v12, v13, :cond_c

    .line 2832
    const/16 v3, 0x100

    return v3

    .line 2833
    :cond_c
    const-wide/32 v17, 0x23100000

    cmp-long v3, v9, v17

    if-gtz v3, :cond_d

    if-gt v7, v15, :cond_d

    const v3, 0x1d4c0

    if-gt v6, v3, :cond_d

    if-gt v12, v13, :cond_d

    .line 2834
    return v14

    .line 2835
    :cond_d
    const-wide/32 v17, 0x46200000

    cmp-long v3, v9, v17

    const v14, 0x2bf20

    if-gtz v3, :cond_e

    if-gt v7, v15, :cond_e

    if-gt v6, v14, :cond_e

    if-gt v12, v13, :cond_e

    .line 2836
    const/16 v3, 0x400

    return v3

    .line 2837
    :cond_e
    cmp-long v3, v9, v17

    const/16 v13, 0x41c0

    const/high16 v15, 0x2200000

    if-gtz v3, :cond_f

    if-gt v7, v15, :cond_f

    if-gt v6, v14, :cond_f

    if-gt v12, v13, :cond_f

    .line 2838
    return v16

    .line 2839
    :cond_f
    const-wide v16, 0x8c400000L

    cmp-long v3, v9, v16

    if-gtz v3, :cond_10

    if-gt v7, v15, :cond_10

    const v3, 0x3a980

    if-gt v6, v3, :cond_10

    if-gt v12, v13, :cond_10

    .line 2840
    const/16 v3, 0x1000

    return v3

    .line 2841
    :cond_10
    const-wide v16, 0x118800000L

    cmp-long v3, v9, v16

    const/16 v14, 0x2000

    if-gtz v3, :cond_11

    if-gt v7, v15, :cond_11

    const v3, 0x75300

    if-gt v6, v3, :cond_11

    if-gt v12, v13, :cond_11

    .line 2842
    return v14

    .line 2844
    :cond_11
    return v14
.end method

.method private greylist-max-o estimateFrameRatesFor(II)Landroid/util/Range;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2135
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    move-result-object v0

    .line 2136
    .local v0, "size":Landroid/util/Size;
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 2137
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v2

    int-to-double v2, v2

    .line 2138
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 2137
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 2139
    .local v2, "ratio":Ljava/lang/Double;
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o findClosestSize(II)Landroid/util/Size;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2120
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v0

    .line 2121
    .local v0, "targetBlockCount":I
    const/4 v1, 0x0

    .line 2122
    .local v1, "closestSize":Landroid/util/Size;
    const v2, 0x7fffffff

    .line 2123
    .local v2, "minDiff":I
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 2124
    .local v4, "size":Landroid/util/Size;
    nop

    .line 2125
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v5

    sub-int v5, v0, v5

    .line 2124
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 2126
    .local v5, "diff":I
    if-ge v5, v2, :cond_0

    .line 2127
    move v2, v5

    .line 2128
    move-object v1, v4

    .line 2130
    .end local v4    # "size":Landroid/util/Size;
    .end local v5    # "diff":I
    :cond_0
    goto :goto_0

    .line 2131
    :cond_1
    return-object v1
.end method

.method private greylist-max-o getBlockCount(II)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2115
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2752
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2753
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/util/Range<Ljava/lang/Long;>;>;"
    const-string v1, "measured-frame-rate-"

    .line 2754
    .local v1, "prefix":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2755
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2757
    .local v4, "key":Ljava/lang/String;
    const-string v5, "measured-frame-rate-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2758
    goto :goto_0

    .line 2760
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2761
    .local v5, "subKey":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2762
    .local v6, "temp":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    .line 2763
    goto :goto_0

    .line 2765
    :cond_2
    const/4 v7, 0x3

    aget-object v7, v6, v7

    .line 2766
    .local v7, "sizeStr":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v9

    .line 2767
    .local v9, "size":Landroid/util/Size;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-gtz v10, :cond_3

    .line 2768
    goto :goto_0

    .line 2770
    :cond_3
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v8

    .line 2771
    .local v8, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    .line 2772
    goto :goto_0

    .line 2774
    :cond_4
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2775
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "subKey":Ljava/lang/String;
    .end local v6    # "temp":[Ljava/lang/String;
    .end local v7    # "sizeStr":Ljava/lang/String;
    .end local v8    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v9    # "size":Landroid/util/Size;
    goto :goto_0

    .line 2776
    :cond_5
    return-object v0
.end method

.method private blacklist getPerformancePoints(Ljava/util/Map;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    .line 2694
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2695
    .local v1, "ret":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;>;"
    const-string v2, "performance-point-"

    .line 2696
    .local v2, "prefix":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2697
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2699
    .local v5, "key":Ljava/lang/String;
    const-string v7, "performance-point-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2700
    goto :goto_0

    .line 2702
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2703
    .local v7, "subKey":Ljava/lang/String;
    const-string v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 2707
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 2709
    :cond_1
    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2710
    .local v8, "temp":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    .line 2711
    goto :goto_0

    .line 2713
    :cond_2
    const/4 v9, 0x2

    aget-object v9, v8, v9

    .line 2714
    .local v9, "sizeStr":Ljava/lang/String;
    invoke-static {v9, v6}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v10

    .line 2715
    .local v10, "size":Landroid/util/Size;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    if-gtz v11, :cond_3

    .line 2716
    goto :goto_0

    .line 2718
    :cond_3
    move-object/from16 v11, p1

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    .line 2719
    .local v6, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_6

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v14

    if-gez v12, :cond_4

    .line 2720
    goto :goto_0

    .line 2722
    :cond_4
    new-instance v13, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2723
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v14

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v16

    .line 2724
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v17

    new-instance v12, Landroid/util/Size;

    move-object/from16 v19, v2

    .end local v2    # "prefix":Ljava/lang/String;
    .local v19, "prefix":Ljava/lang/String;
    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v20, v3

    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v20, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v12, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    .line 2725
    .local v13, "given":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    new-instance v21, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2726
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v22

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v23

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v24

    .line 2727
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v25

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v12, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v2, v3, v12}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v26, v2

    invoke-direct/range {v21 .. v26}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;-><init>(IIIILandroid/util/Size;)V

    move-object/from16 v2, v21

    .line 2728
    .local v2, "rotated":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    invoke-virtual {v1, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2729
    invoke-virtual {v13, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->covers(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2730
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2732
    .end local v2    # "rotated":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v7    # "subKey":Ljava/lang/String;
    .end local v8    # "temp":[Ljava/lang/String;
    .end local v9    # "sizeStr":Ljava/lang/String;
    .end local v10    # "size":Landroid/util/Size;
    .end local v13    # "given":Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    :cond_5
    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 2719
    .end local v19    # "prefix":Ljava/lang/String;
    .end local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "prefix":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .restart local v7    # "subKey":Ljava/lang/String;
    .restart local v8    # "temp":[Ljava/lang/String;
    .restart local v9    # "sizeStr":Ljava/lang/String;
    .restart local v10    # "size":Landroid/util/Size;
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "prefix":Ljava/lang/String;
    .restart local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 2715
    .end local v6    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v19    # "prefix":Ljava/lang/String;
    .end local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v11, p1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "prefix":Ljava/lang/String;
    .restart local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 2735
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "subKey":Ljava/lang/String;
    .end local v8    # "temp":[Ljava/lang/String;
    .end local v9    # "sizeStr":Ljava/lang/String;
    .end local v10    # "size":Landroid/util/Size;
    .end local v19    # "prefix":Ljava/lang/String;
    .end local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "prefix":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v11, p1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "prefix":Ljava/lang/String;
    .restart local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 2736
    return-object v6

    .line 2740
    :cond_9
    new-instance v2, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->sort(Ljava/util/Comparator;)V

    .line 2748
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2642
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2643
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    .line 2644
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    .line 2645
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 2646
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 2647
    return-void
.end method

.method private greylist-max-o initWithPlatformLimits()V
    .locals 1

    .line 2670
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 2672
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2673
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2674
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2676
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 2677
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 2680
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2681
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2683
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2684
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2686
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 2687
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 2688
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 2689
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 2690
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 2691
    return-void
.end method

.method static synthetic blacklist lambda$getPerformancePoints$0(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I
    .locals 6
    .param p0, "a"    # Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;
    .param p1, "b"    # Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    .line 2741
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 2742
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlocks()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    .line 2743
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 2744
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxMacroBlockRate()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 2745
    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 2746
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;->getMaxFrameRate()I

    move-result v1

    if-ge v0, v1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    neg-int v0, v2

    .line 2741
    return v0
.end method

.method private greylist-max-o parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 22
    .param p1, "info"    # Landroid/media/MediaFormat;

    .line 2848
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v11

    .line 2849
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/util/Size;

    iget v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 2850
    .local v0, "blockSize":Landroid/util/Size;
    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 2851
    .local v2, "alignment":Landroid/util/Size;
    const/4 v3, 0x0

    .local v3, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 2852
    .local v5, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 2853
    .local v7, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 2854
    .local v8, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .local v9, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v10, 0x0

    .line 2856
    .local v10, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string v12, "block-size"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    .line 2857
    .end local v0    # "blockSize":Landroid/util/Size;
    .local v12, "blockSize":Landroid/util/Size;
    const-string v0, "alignment"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v13

    .line 2858
    .end local v2    # "alignment":Landroid/util/Size;
    .local v13, "alignment":Landroid/util/Size;
    const-string v0, "block-count-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v14

    .line 2859
    .end local v3    # "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v14, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    nop

    .line 2860
    const-string v0, "blocks-per-second-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    .line 2861
    .end local v8    # "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local v15, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-direct {v1, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    .line 2862
    invoke-direct {v1, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getPerformancePoints(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mPerformancePoints:Ljava/util/List;

    .line 2863
    nop

    .line 2864
    const-string v0, "size-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 2865
    .local v3, "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    if-eqz v3, :cond_0

    .line 2866
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/util/Range;

    .line 2867
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/util/Range;

    .line 2873
    :cond_0
    const-string v0, "feature-can-swap-width-height"

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "VideoCapabilities"

    if-eqz v0, :cond_2

    .line 2874
    if-eqz v4, :cond_1

    .line 2875
    nop

    .line 2876
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 2877
    invoke-virtual {v4, v5}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    move-object v5, v0

    move-object v4, v0

    goto :goto_0

    .line 2879
    :cond_1
    const-string v0, "feature can-swap-width-height is best used with size-range"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2881
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 2882
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0, v2}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2886
    :cond_2
    :goto_0
    nop

    .line 2887
    const-string v0, "block-aspect-ratio-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2886
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v9

    .line 2888
    nop

    .line 2889
    const-string v0, "pixel-aspect-ratio-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2888
    invoke-static {v0, v2}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v10

    .line 2890
    const-string v0, "frame-rate-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    .line 2891
    const-string v2, ") is out of limits: "

    if-eqz v6, :cond_3

    .line 2893
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 2898
    goto :goto_1

    .line 2894
    :catch_0
    move-exception v0

    .line 2895
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame rate range ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    const/4 v6, 0x0

    .line 2900
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_1
    const-string v0, "bitrate-range"

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    .line 2901
    .end local v7    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v1, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_4

    .line 2903
    :try_start_1
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 2908
    goto :goto_2

    .line 2904
    :catch_1
    move-exception v0

    .line 2905
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "bitrate range ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_2

    .line 2901
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    move-object v0, v1

    .line 2911
    .end local v1    # "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v0, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_2
    nop

    .line 2912
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 2911
    const-string v2, "block-size width must be power of two"

    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2913
    nop

    .line 2914
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 2913
    const-string v2, "block-size height must be power of two"

    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2916
    nop

    .line 2917
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 2916
    const-string v2, "alignment width must be power of two"

    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2918
    nop

    .line 2919
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 2918
    const-string v2, "alignment height must be power of two"

    invoke-static {v1, v2}, Landroid/media/MediaCodecInfo;->-$$Nest$smcheckPowerOfTwo(ILjava/lang/String;)I

    .line 2922
    nop

    .line 2924
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 2925
    move-object v1, v9

    .end local v9    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v1, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v9

    move-object v2, v10

    .end local v10    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v2, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v10

    .line 2922
    move-object/from16 v16, v2

    .end local v2    # "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v16, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const v2, 0x7fffffff

    move-object/from16 v17, v3

    .end local v3    # "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .local v17, "sizeRanges":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Range<Ljava/lang/Integer;>;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    const v3, 0x7fffffff

    move-object/from16 v18, v4

    .end local v4    # "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v18, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const v4, 0x7fffffff

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .end local v5    # "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v6    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v19, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v20, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-wide v5, 0x7fffffffffffffffL

    move-object/from16 v21, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v1

    move-object/from16 v1, p0

    .end local v1    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v11, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v12, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v13, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v18, "blockSize":Landroid/util/Size;
    .local v19, "alignment":Landroid/util/Size;
    .local v20, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v21, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-direct/range {v1 .. v10}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2927
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_d

    iget-boolean v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-eqz v2, :cond_5

    move-object/from16 v3, v20

    move-object/from16 v6, v21

    goto/16 :goto_4

    .line 2968
    :cond_5
    if-eqz v13, :cond_6

    .line 2969
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2971
    :cond_6
    if-eqz v11, :cond_7

    .line 2972
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2, v11}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2974
    :cond_7
    if-eqz v14, :cond_8

    .line 2975
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 2977
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    .line 2976
    invoke-static {v14, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    .line 2975
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2979
    :cond_8
    if-eqz v15, :cond_9

    .line 2980
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    .line 2982
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v3, v3

    .line 2981
    invoke-static {v15, v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    .line 2980
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2984
    :cond_9
    if-eqz v12, :cond_a

    .line 2985
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v3, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 2987
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 2988
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    .line 2986
    invoke-static {v12, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    .line 2985
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2990
    :cond_a
    if-eqz v20, :cond_b

    .line 2991
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    move-object/from16 v3, v20

    .end local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .local v3, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    goto :goto_3

    .line 2990
    .end local v3    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :cond_b
    move-object/from16 v3, v20

    .line 2993
    .end local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v3    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :goto_3
    move-object/from16 v6, v21

    .end local v21    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v6    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_c

    .line 2994
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2, v6}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2996
    :cond_c
    if-eqz v0, :cond_16

    .line 2997
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_5

    .line 2927
    .end local v3    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .end local v6    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v21    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_d
    move-object/from16 v3, v20

    move-object/from16 v6, v21

    .line 2930
    .end local v20    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .end local v21    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local v3    # "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    .restart local v6    # "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_4
    if-eqz v13, :cond_e

    .line 2931
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2933
    :cond_e
    if-eqz v11, :cond_f

    .line 2934
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$smgetSizeRange()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2936
    :cond_f
    if-eqz v14, :cond_10

    .line 2937
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v2

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v4, v5

    .line 2939
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    .line 2938
    invoke-static {v14, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v4

    .line 2937
    invoke-virtual {v2, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2941
    :cond_10
    if-eqz v15, :cond_11

    .line 2942
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_LONGS()Landroid/util/Range;

    move-result-object v2

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v4, v5

    .line 2944
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    int-to-long v4, v4

    .line 2943
    invoke-static {v15, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v4

    .line 2942
    invoke-virtual {v2, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2946
    :cond_11
    if-eqz v12, :cond_12

    .line 2947
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v2

    iget v4, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 2949
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    iget v5, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 2950
    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getWidth()I

    move-result v7

    div-int/2addr v5, v7

    .line 2948
    invoke-static {v12, v4, v5}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v4

    .line 2947
    invoke-virtual {v2, v4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2952
    :cond_12
    if-eqz v3, :cond_13

    .line 2953
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_RATIONALS()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2955
    :cond_13
    if-eqz v6, :cond_14

    .line 2956
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetFRAME_RATE_RANGE()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2958
    :cond_14
    if-eqz v0, :cond_16

    .line 2960
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_15

    .line 2961
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetBITRATE_RANGE()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto :goto_5

    .line 2963
    :cond_15
    iget-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 3000
    :cond_16
    :goto_5
    invoke-direct {v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 3001
    return-void
.end method

.method private static greylist-max-o parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 2780
    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 2781
    .local v0, "range":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Size;Landroid/util/Size;>;"
    if-eqz v0, :cond_0

    .line 2783
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    .line 2784
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    .line 2785
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 2783
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2786
    :catch_0
    move-exception v1

    .line 2787
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not parse size range \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapabilities"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 10
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "rate"    # Ljava/lang/Number;

    .line 2567
    const/4 v0, 0x1

    .line 2569
    .local v0, "ok":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2570
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v3, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2571
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    .line 2573
    :cond_1
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 2574
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2575
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    move v0, v3

    .line 2577
    :cond_3
    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 2578
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v0

    .line 2580
    :cond_4
    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    .line 2581
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v3, v4, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    .line 2583
    .end local v0    # "ok":Z
    .local v3, "ok":Z
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v0, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    .line 2584
    .local v0, "widthInBlocks":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v4, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 2585
    .local v4, "heightInBlocks":I
    mul-int v5, v0, v4

    .line 2586
    .local v5, "blockCount":I
    if-eqz v3, :cond_6

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v0, v4}, Landroid/util/Rational;-><init>(II)V

    .line 2587
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    .line 2589
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    .line 2590
    .end local v3    # "ok":Z
    .local v1, "ok":Z
    :goto_3
    if-eqz v1, :cond_7

    if-eqz p3, :cond_7

    .line 2591
    int-to-double v2, v5

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v2, v6

    .line 2592
    .local v2, "blocksPerSec":D
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2593
    invoke-static {v2, v3}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object v7

    .line 2592
    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v1

    move v0, v1

    goto :goto_4

    .line 2596
    .end local v0    # "widthInBlocks":I
    .end local v2    # "blocksPerSec":D
    .end local v4    # "heightInBlocks":I
    .end local v5    # "blockCount":I
    :cond_7
    move v0, v1

    .end local v1    # "ok":Z
    .local v0, "ok":Z
    :cond_8
    :goto_4
    return v0
.end method

.method private greylist-max-o updateLimits()V
    .locals 6

    .line 3064
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 3065
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 3064
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3066
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3068
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3069
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3067
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 3066
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3070
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 3071
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    .line 3070
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3072
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3074
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3075
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3073
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 3072
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3076
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3078
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3079
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/2addr v1, v2

    .line 3078
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3080
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3081
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    .line 3080
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3077
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 3076
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3082
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3084
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3086
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 3082
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 3089
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3090
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 3091
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3089
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3092
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3093
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 3094
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3092
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 3095
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v1, Landroid/util/Rational;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3096
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3097
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 3095
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 3099
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 3101
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3099
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 3104
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3105
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3106
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3104
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3107
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3108
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3109
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 3108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 3110
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 3111
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 3110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3107
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 3112
    return-void
.end method


# virtual methods
.method public whitelist areSizeAndRateSupported(IID)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .line 2555
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public whitelist getAchievableFrameRatesFor(II)Landroid/util/Range;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2192
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2197
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    return-object v0

    .line 2193
    :cond_1
    :goto_0
    const-string v0, "VideoCapabilities"

    const-string v1, "Codec did not publish any measurement data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    return-object v2

    .line 2189
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getAspectRatioRange(Z)Landroid/util/Range;
    .locals 1
    .param p1, "blocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .line 2666
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :goto_0
    return-object v0
.end method

.method public whitelist getBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1928
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public greylist-max-o getBlockCountRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2656
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public greylist-max-o getBlockSize()Landroid/util/Size;
    .locals 3

    .line 2651
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public greylist-max-o getBlocksPerSecondRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2661
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getHeightAlignment()I
    .locals 1

    .line 1968
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public greylist-max-o getSmallerDimensionUpperLimit()I
    .locals 1

    .line 1985
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public whitelist getSupportedFrameRates()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1997
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getSupportedFrameRatesFor(II)Landroid/util/Range;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2101
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 2105
    invoke-static {p1, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    mul-int/2addr v1, v2

    .line 2107
    .local v1, "blockCount":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2108
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2109
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    .line 2108
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 2110
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    int-to-double v5, v1

    div-double/2addr v3, v5

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2111
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v5, v5

    .line 2110
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 2107
    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2

    .line 2102
    .end local v1    # "blockCount":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unsupported size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getSupportedHeights()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 10
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2050
    const-string v0, "unsupported width"

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 2051
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_1

    .line 2055
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    .line 2058
    .local v2, "widthInBlocks":I
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2059
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    int-to-double v4, v2

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2061
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 2060
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 2058
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2062
    .local v3, "minHeightInBlocks":I
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2063
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/2addr v4, v2

    int-to-double v5, v2

    iget-object v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2065
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Landroid/util/Rational;

    invoke-virtual {v7}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-int v5, v5

    .line 2062
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2066
    .local v4, "maxHeightInBlocks":I
    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v5, v6

    .line 2067
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v6, v4

    .line 2068
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2066
    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 2071
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v5, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v1, :cond_0

    .line 2072
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    move-object v5, v1

    .line 2076
    :cond_0
    int-to-double v6, p1

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2078
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 2077
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    int-to-double v6, p1

    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2079
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Landroid/util/Rational;

    invoke-virtual {v8}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2076
    invoke-virtual {v5, v1, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 2080
    .end local v5    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    return-object v0

    .line 2053
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v2    # "widthInBlocks":I
    .end local v3    # "minHeightInBlocks":I
    .end local v4    # "maxHeightInBlocks":I
    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .end local p1    # "width":I
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2081
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .restart local p1    # "width":I
    :catch_0
    move-exception v1

    .line 2083
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get supported heights for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapabilities"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getSupportedPerformancePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;"
        }
    .end annotation

    .line 2546
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mPerformancePoints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSupportedWidths()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1938
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 10
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2006
    const-string v0, "unsupported height"

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 2007
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v2, p1, v2

    if-nez v2, :cond_1

    .line 2011
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    .line 2014
    .local v2, "heightInBlocks":I
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2015
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2016
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Landroid/util/Rational;

    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v4

    int-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 2014
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2018
    .local v3, "minWidthInBlocks":I
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 2019
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/2addr v4, v2

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2020
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v5

    int-to-double v7, v2

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 2018
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2022
    .local v4, "maxWidthInBlocks":I
    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v5, v6

    .line 2023
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v6, v4

    .line 2024
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2022
    invoke-virtual {v1, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 2027
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v5, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v1, :cond_0

    .line 2028
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    move-object v5, v1

    .line 2032
    :cond_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2033
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 2035
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Landroid/util/Rational;

    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2032
    invoke-virtual {v5, v1, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 2036
    .end local v5    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    return-object v0

    .line 2009
    .end local v0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v2    # "heightInBlocks":I
    .end local v3    # "minWidthInBlocks":I
    .end local v4    # "maxWidthInBlocks":I
    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .end local p1    # "height":I
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .restart local p0    # "this":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .restart local p1    # "height":I
    :catch_0
    move-exception v1

    .line 2039
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not get supported widths for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCapabilities"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getWidthAlignment()I
    .locals 1

    .line 1958
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public whitelist isSizeSupported(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 2563
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 2612
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 2613
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2614
    .local v1, "width":Ljava/lang/Integer;
    const-string v2, "height"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2615
    .local v2, "height":Ljava/lang/Integer;
    const-string v3, "frame-rate"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 2617
    .local v3, "rate":Ljava/lang/Number;
    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 2618
    return v5

    .line 2621
    :cond_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {v4, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->-$$Nest$smsupportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2622
    return v5

    .line 2626
    :cond_1
    const/4 v4, 0x1

    return v4
.end method
