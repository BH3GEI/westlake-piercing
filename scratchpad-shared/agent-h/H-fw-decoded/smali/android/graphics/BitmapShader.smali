.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;
.source "BitmapShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapShader$FilterMode;
    }
.end annotation


# static fields
.field public static final FILTER_MODE_DEFAULT:I = 0x0

.field public static final FILTER_MODE_LINEAR:I = 0x2

.field public static final FILTER_MODE_NEAREST:I = 0x1


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field private mFilterFromPaint:Z

.field private mFilterMode:I

.field private mIsDirectSampled:Z

.field private mMaxAniso:I

.field private mOverrideGainmap:Landroid/graphics/Gainmap;

.field private mRequestDirectSampling:Z

.field private mTileX:I

.field private mTileY:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # I
    .param p3, "tileY"    # I

    .line 124
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    .line 125
    if-eqz p1, :cond_0

    .line 128
    const-string v1, "Cannot create BitmapShader for recycled bitmap"

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    .line 130
    iput p2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    .line 131
    iput p3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    .line 132
    iput v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 133
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 134
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 135
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 136
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "tileX"    # Landroid/graphics/Shader$TileMode;
    .param p3, "tileY"    # Landroid/graphics/Shader$TileMode;

    .line 121
    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    .line 122
    return-void
.end method

.method private static native nativeCreate(JJIIIZZJ)J
.end method


# virtual methods
.method protected createNativeInstance(JZ)J
    .locals 14
    .param p1, "nativeMatrix"    # J
    .param p3, "filterFromPaint"    # Z

    .line 215
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    const-string v1, "BitmapShader\'s bitmap has been recycled"

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 218
    .local v0, "enableLinearFilter":Z
    :goto_0
    iget v1, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-nez v1, :cond_1

    .line 219
    move/from16 v1, p3

    iput-boolean v1, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    .line 220
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    move v10, v0

    goto :goto_1

    .line 218
    :cond_1
    move/from16 v1, p3

    move v10, v0

    .line 223
    .end local v0    # "enableLinearFilter":Z
    .local v10, "enableLinearFilter":Z
    :goto_1
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 224
    iput-boolean v2, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 225
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v8, p0, Landroid/graphics/BitmapShader;->mTileY:I

    iget v9, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    iget-boolean v11, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    .line 227
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mOverrideGainmap:Landroid/graphics/Gainmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/BitmapShader;->mOverrideGainmap:Landroid/graphics/Gainmap;

    iget-wide v2, v0, Landroid/graphics/Gainmap;->mNativePtr:J

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    :goto_2
    move-wide v12, v2

    .line 225
    move-wide v3, p1

    invoke-static/range {v3 .. v13}, Landroid/graphics/BitmapShader;->nativeCreate(JJIIIZZJ)J

    move-result-wide v5

    return-wide v5
.end method

.method public getFilterMode()I
    .locals 1

    .line 143
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    return v0
.end method

.method public getMaxAnisotropy()I
    .locals 1

    .line 203
    iget v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    return v0
.end method

.method declared-synchronized getNativeInstanceWithDirectSampling()J
    .locals 2

    monitor-enter p0

    .line 208
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    .line 209
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->getNativeInstance()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 207
    .end local p0    # "this":Landroid/graphics/BitmapShader;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFilterMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 152
    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-eq p1, v0, :cond_0

    .line 153
    iput p1, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    .line 155
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 157
    :cond_0
    return-void
.end method

.method public setMaxAnisotropy(I)V
    .locals 1
    .param p1, "maxAnisotropy"    # I

    .line 173
    iget v0, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 174
    iput p1, p0, Landroid/graphics/BitmapShader;->mMaxAniso:I

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    .line 176
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 178
    :cond_0
    return-void
.end method

.method public setOverrideGainmap(Landroid/graphics/Gainmap;)V
    .locals 2
    .param p1, "overrideGainmap"    # Landroid/graphics/Gainmap;

    .line 188
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->gainmapAnimations()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapShader;->mOverrideGainmap:Landroid/graphics/Gainmap;

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Landroid/graphics/Gainmap;

    invoke-virtual {p1}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Gainmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/graphics/BitmapShader;->mOverrideGainmap:Landroid/graphics/Gainmap;

    .line 195
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    .line 196
    return-void

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shouldDiscardNativeInstance(Z)Z
    .locals 2
    .param p1, "filterFromPaint"    # Z

    .line 233
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    iget-boolean v1, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    if-eq v0, p1, :cond_0

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
