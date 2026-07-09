.class public Landroid/graphics/ImageDecoder$ImageInfo;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field private final mColorSpace:Landroid/graphics/ColorSpace;

.field private final mIsAnimated:Z

.field private final mMimeType:Ljava/lang/String;

.field private final mSize:Landroid/util/Size;


# direct methods
.method private constructor <init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;)V
    .locals 0
    .param p1, "size"    # Landroid/util/Size;
    .param p2, "isAnimated"    # Z
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    iput-object p1, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    .line 640
    iput-boolean p2, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mIsAnimated:Z

    .line 641
    iput-object p3, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mMimeType:Ljava/lang/String;

    .line 642
    iput-object p4, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 643
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;Landroid/graphics/ImageDecoder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/util/Size;ZLjava/lang/String;Landroid/graphics/ColorSpace;)V

    return-void
.end method


# virtual methods
.method public getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .line 680
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 658
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 650
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method public isAnimated()Z
    .locals 1

    .line 668
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mIsAnimated:Z

    return v0
.end method
