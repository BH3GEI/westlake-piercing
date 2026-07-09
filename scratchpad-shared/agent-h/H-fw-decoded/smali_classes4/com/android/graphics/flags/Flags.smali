.class public final Lcom/android/graphics/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/graphics/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DISPLAY_BT2020_COLORSPACE:Ljava/lang/String; = "com.android.graphics.flags.display_bt2020_colorspace"

.field public static final blacklist FLAG_EXACT_COMPUTE_BOUNDS:Ljava/lang/String; = "com.android.graphics.flags.exact_compute_bounds"

.field public static final blacklist FLAG_GRADIENT_DRAWABLE_SHAPE_ROUNDED_CAP:Ljava/lang/String; = "com.android.graphics.flags.gradient_drawable_shape_rounded_cap"

.field public static final blacklist FLAG_ICON_LOAD_DRAWABLE_RETURN_NULL_WHEN_URI_DECODE_FAILS:Ljava/lang/String; = "com.android.graphics.flags.icon_load_drawable_return_null_when_uri_decode_fails"

.field public static final blacklist FLAG_OK_LAB_COLORSPACE:Ljava/lang/String; = "com.android.graphics.flags.ok_lab_colorspace"

.field public static final blacklist FLAG_YUV_IMAGE_COMPRESS_TO_ULTRA_HDR:Ljava/lang/String; = "com.android.graphics.flags.yuv_image_compress_to_ultra_hdr"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/graphics/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/graphics/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/graphics/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist displayBt2020Colorspace()Z
    .locals 1

    .line 22
    sget-object v0, Lcom/android/graphics/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/flags/FeatureFlags;->displayBt2020Colorspace()Z

    move-result v0

    return v0
.end method

.method public static greylist exactComputeBounds()Z
    .locals 1

    .line 28
    sget-object v0, Lcom/android/graphics/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/flags/FeatureFlags;->exactComputeBounds()Z

    move-result v0

    return v0
.end method

.method public static greylist gradientDrawableShapeRoundedCap()Z
    .locals 1

    .line 34
    sget-object v0, Lcom/android/graphics/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/flags/FeatureFlags;->gradientDrawableShapeRoundedCap()Z

    move-result v0

    return v0
.end method

.method public static greylist iconLoadDrawableReturnNullWhenUriDecodeFails()Z
    .locals 1

    .line 40
    sget-object v0, Lcom/android/graphics/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/flags/FeatureFlags;->iconLoadDrawableReturnNullWhenUriDecodeFails()Z

    move-result v0

    return v0
.end method

.method public static greylist okLabColorspace()Z
    .locals 1

    .line 46
    sget-object v0, Lcom/android/graphics/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/flags/FeatureFlags;->okLabColorspace()Z

    move-result v0

    return v0
.end method

.method public static greylist yuvImageCompressToUltraHdr()Z
    .locals 1

    .line 52
    sget-object v0, Lcom/android/graphics/flags/Flags;->FEATURE_FLAGS:Lcom/android/graphics/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/graphics/flags/FeatureFlags;->yuvImageCompressToUltraHdr()Z

    move-result v0

    return v0
.end method
