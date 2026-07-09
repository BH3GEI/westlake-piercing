.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFormat$Format;
    }
.end annotation


# static fields
.field public static final DEPTH16:I = 0x44363159

.field public static final DEPTH_JPEG:I = 0x69656963

.field public static final DEPTH_POINT_CLOUD:I = 0x101

.field public static final FLEX_RGBA_8888:I = 0x2a

.field public static final FLEX_RGB_888:I = 0x29

.field public static final HEIC:I = 0x48454946

.field public static final HEIC_ULTRAHDR:I = 0x1006

.field public static final JPEG:I = 0x100

.field public static final JPEG_R:I = 0x1005

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final PRIVATE:I = 0x22

.field public static final RAW10:I = 0x25

.field public static final RAW12:I = 0x26

.field public static final RAW_DEPTH:I = 0x1002

.field public static final RAW_DEPTH10:I = 0x1003

.field public static final RAW_PRIVATE:I = 0x24

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YCBCR_P010:I = 0x36

.field public static final YCBCR_P210:I = 0x3c

.field public static final YUV_420_888:I = 0x23

.field public static final YUV_422_888:I = 0x27

.field public static final YUV_444_888:I = 0x28

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .locals 4
    .param p0, "format"    # I

    .line 856
    const/16 v0, 0x20

    const/16 v1, 0x18

    const/16 v2, 0xc

    const/16 v3, 0x10

    sparse-switch p0, :sswitch_data_0

    .line 895
    const/4 v0, -0x1

    return v0

    .line 864
    :sswitch_0
    return v2

    .line 869
    :sswitch_1
    return v3

    .line 866
    :sswitch_2
    const/16 v0, 0x8

    return v0

    .line 888
    :sswitch_3
    return v0

    .line 886
    :sswitch_4
    return v1

    .line 881
    :sswitch_5
    return v0

    .line 879
    :sswitch_6
    return v1

    .line 877
    :sswitch_7
    return v1

    .line 875
    :sswitch_8
    return v3

    .line 893
    :sswitch_9
    return v2

    .line 891
    :sswitch_a
    const/16 v0, 0xa

    return v0

    .line 873
    :sswitch_b
    return v2

    .line 884
    :sswitch_c
    return v3

    .line 862
    :sswitch_d
    return v3

    .line 871
    :sswitch_e
    return v2

    .line 860
    :sswitch_f
    return v3

    .line 858
    :sswitch_10
    return v3

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_10
        0x10 -> :sswitch_f
        0x11 -> :sswitch_e
        0x14 -> :sswitch_d
        0x20 -> :sswitch_c
        0x23 -> :sswitch_b
        0x25 -> :sswitch_a
        0x26 -> :sswitch_9
        0x27 -> :sswitch_8
        0x28 -> :sswitch_7
        0x29 -> :sswitch_6
        0x2a -> :sswitch_5
        0x36 -> :sswitch_4
        0x3c -> :sswitch_3
        0x1002 -> :sswitch_c
        0x1003 -> :sswitch_a
        0x20203859 -> :sswitch_2
        0x20363159 -> :sswitch_1
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isPublicFormat(I)Z
    .locals 2
    .param p0, "format"    # I

    .line 911
    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    .line 939
    invoke-static {}, Landroid/media/codec/Flags;->p210FormatSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    if-ne p0, v1, :cond_0

    .line 940
    return v0

    .line 937
    :sswitch_0
    return v0

    .line 942
    :cond_0
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHeifGainmap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    const/16 v1, 0x1006

    if-ne p0, v1, :cond_1

    .line 944
    return v0

    .line 947
    :cond_1
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x14 -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x36 -> :sswitch_0
        0x100 -> :sswitch_0
        0x101 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x1003 -> :sswitch_0
        0x1005 -> :sswitch_0
        0x20203859 -> :sswitch_0
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_0
        0x48454946 -> :sswitch_0
        0x69656963 -> :sswitch_0
    .end sparse-switch
.end method
