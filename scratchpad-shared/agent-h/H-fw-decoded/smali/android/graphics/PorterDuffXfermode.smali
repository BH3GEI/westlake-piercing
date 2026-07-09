.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "PorterDuffXfermode.java"


# static fields
.field static final DEFAULT:I


# instance fields
.field porterDuffMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v0, v0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    sput v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 33
    sget v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 33
    sget v0, Landroid/graphics/PorterDuffXfermode;->DEFAULT:I

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 36
    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->porterDuffMode:I

    .line 37
    return-void
.end method
