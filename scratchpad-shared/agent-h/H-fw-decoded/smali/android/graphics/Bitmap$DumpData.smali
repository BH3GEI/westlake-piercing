.class final Landroid/graphics/Bitmap$DumpData;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DumpData"
.end annotation


# instance fields
.field private buffers:[[B

.field private count:I

.field private format:I

.field private max:I

.field private natives:[J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 1
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "max"    # I

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    iput p2, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    .line 1554
    iget v0, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    iput v0, p0, Landroid/graphics/Bitmap$DumpData;->format:I

    .line 1555
    new-array v0, p2, [J

    iput-object v0, p0, Landroid/graphics/Bitmap$DumpData;->natives:[J

    .line 1556
    new-array v0, p2, [[B

    iput-object v0, p0, Landroid/graphics/Bitmap$DumpData;->buffers:[[B

    .line 1557
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    .line 1558
    return-void
.end method


# virtual methods
.method public add(J[B)V
    .locals 2
    .param p1, "nativePtr"    # J
    .param p3, "buffer"    # [B

    .line 1561
    iget-object v0, p0, Landroid/graphics/Bitmap$DumpData;->natives:[J

    iget v1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    aput-wide p1, v0, v1

    .line 1562
    iget-object v0, p0, Landroid/graphics/Bitmap$DumpData;->buffers:[[B

    iget v1, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    aput-object p3, v0, v1

    .line 1563
    iget v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    iget v1, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Bitmap$DumpData;->max:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    .line 1564
    return-void
.end method

.method public size()I
    .locals 1

    .line 1567
    iget v0, p0, Landroid/graphics/Bitmap$DumpData;->count:I

    return v0
.end method
