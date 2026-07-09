.class public final Landroid/graphics/fonts/Font$Builder;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mException:Ljava/io/IOException;

.field private mFile:Ljava/io/File;

.field private mFont:Landroid/graphics/fonts/Font;

.field private mItalic:I

.field private mLocaleList:Ljava/lang/String;

.field private mTtcIndex:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 85
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 184
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, p2, v1, v0}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 188
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isAsset"    # Z
    .param p4, "cookie"    # I

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 85
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 202
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 206
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 85
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 217
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 218
    .local v1, "value":Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 219
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 220
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 221
    return-void

    .line 223
    :cond_0
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be font file."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 226
    return-void

    .line 230
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v3, v2, v0, v4}, Landroid/graphics/fonts/Font$Builder;->createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/fonts/Font;)V
    .locals 1
    .param p1, "font"    # Landroid/graphics/fonts/Font;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 85
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 242
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    .line 244
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    .line 245
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 246
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 247
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 248
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 249
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 155
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-direct/range {v0 .. v5}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 8
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 85
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 167
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v0

    .line 168
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v2, v0

    .line 169
    .local v2, "fc":Ljava/nio/channels/FileChannel;
    const-wide/16 v3, -0x1

    cmp-long v0, p4, v3

    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long/2addr v3, p2

    move-wide v6, v3

    goto :goto_0

    .line 167
    .end local v2    # "fc":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    goto :goto_1

    .line 169
    .restart local v2    # "fc":Ljava/nio/channels/FileChannel;
    :cond_0
    move-wide v6, p4

    .line 170
    .end local p4    # "size":J
    .local v6, "size":J
    :goto_0
    :try_start_3
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide v4, p2

    .end local p2    # "offset":J
    .local v4, "offset":J
    :try_start_4
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 171
    .end local v2    # "fc":Ljava/nio/channels/FileChannel;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 173
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 171
    :catch_0
    move-exception v0

    move-object p2, v0

    move-wide p4, v6

    goto :goto_3

    .line 167
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object p2, v0

    move-wide p4, v6

    goto :goto_1

    .end local v4    # "offset":J
    .restart local p2    # "offset":J
    :catchall_2
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    move-wide p4, v6

    .end local p2    # "offset":J
    .restart local v4    # "offset":J
    goto :goto_1

    .end local v4    # "offset":J
    .end local v6    # "size":J
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    :catchall_3
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    .end local p2    # "offset":J
    .restart local v4    # "offset":J
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object p3, v0

    :try_start_7
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "offset":J
    .end local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .end local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p4    # "size":J
    :goto_2
    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 171
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "offset":J
    .restart local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .restart local p1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p4    # "size":J
    :catch_1
    move-exception v0

    move-object p2, v0

    goto :goto_3

    .end local v4    # "offset":J
    .restart local p2    # "offset":J
    :catch_2
    move-exception v0

    move-wide v4, p2

    move-object p2, v0

    .line 172
    .restart local v4    # "offset":J
    .local p2, "e":Ljava/io/IOException;
    :goto_3
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    move-wide v6, p4

    .line 174
    .end local p2    # "e":Ljava/io/IOException;
    .end local p4    # "size":J
    .restart local v6    # "size":J
    :goto_4
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8
    .param p1, "path"    # Ljava/io/File;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 85
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 139
    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 141
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v2, v0

    .line 142
    .local v2, "fc":Ljava/nio/channels/FileChannel;
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v2    # "fc":Ljava/nio/channels/FileChannel;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    .end local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 140
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .end local p1    # "path":Ljava/io/File;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/graphics/fonts/Font$Builder;
    .restart local p1    # "path":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;
    .param p2, "localeList"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    .line 130
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 85
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 99
    const-string v0, "buffer can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-object p1, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    .line 105
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only direct buffer can be used as the source of font data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "localeList"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 116
    iput-object p2, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    .line 117
    iput-object p3, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static createBuffer(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isAsset"    # Z
    .param p3, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    const-string v0, "assetManager can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v0, "path can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    if-eqz p2, :cond_0

    .line 273
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v1, v0

    .local v0, "assetFD":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 286
    .end local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 274
    :cond_0
    if-lez p3, :cond_1

    .line 275
    invoke-virtual {p0, p3, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v1, v0

    .restart local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 277
    .end local v0    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    move-object v1, v0

    .line 280
    .local v1, "assetFD":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 281
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v3, v0

    .line 282
    .local v3, "fc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    .line 283
    .local v5, "startOffset":J
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v7

    .line 284
    .local v7, "declaredLength":J
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    :cond_2
    return-object v0

    .line 280
    .end local v3    # "fc":Ljava/nio/channels/FileChannel;
    .end local v5    # "startOffset":J
    .end local v7    # "declaredLength":J
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "am":Landroid/content/res/AssetManager;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "isAsset":Z
    .end local p3    # "cookie":I
    :cond_3
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 290
    .end local v1    # "assetFD":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "am":Landroid/content/res/AssetManager;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "isAsset":Z
    .restart local p3    # "cookie":I
    :goto_2
    const/4 v0, 0x3

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_3

    .line 291
    :cond_4
    invoke-virtual {p0, p3, p1, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    :goto_3
    move-object v1, v0

    .line 293
    .local v1, "assetStream":Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 294
    .local v0, "capacity":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 295
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 296
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 298
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 302
    nop

    .line 303
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 302
    :cond_5
    return-object v2

    .line 299
    :cond_6
    :try_start_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to access full contents of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "assetStream":Ljava/io/InputStream;
    .end local p0    # "am":Landroid/content/res/AssetManager;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "isAsset":Z
    .end local p3    # "cookie":I
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 290
    .end local v0    # "capacity":I
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "assetStream":Ljava/io/InputStream;
    .restart local p0    # "am":Landroid/content/res/AssetManager;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "isAsset":Z
    .restart local p3    # "cookie":I
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v2
.end method

.method private static native nAddAxis(JIF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IZI)J
.end method

.method private static native nClone(JJIZI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nInitBuilder()J
.end method


# virtual methods
.method public build()Landroid/graphics/fonts/Font;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    if-nez v0, :cond_9

    .line 452
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v0, v2, :cond_3

    .line 453
    :cond_0
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    iget-object v4, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v0, v3, v4}, Landroid/graphics/fonts/FontFileUtil;->analyzeStyle(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;)I

    move-result v0

    .line 454
    .local v0, "packed":I
    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    iget v3, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    if-ne v3, v2, :cond_1

    .line 456
    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->unpackWeight(I)I

    move-result v3

    iput v3, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 458
    :cond_1
    iget v3, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v3, v2, :cond_3

    .line 459
    invoke-static {v0}, Landroid/graphics/fonts/FontFileUtil;->unpackItalic(I)Z

    move-result v2

    iput v2, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    goto :goto_0

    .line 462
    :cond_2
    const/16 v2, 0x190

    iput v2, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 463
    iput v1, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 466
    .end local v0    # "packed":I
    :cond_3
    :goto_0
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 467
    const/16 v2, 0x3e8

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 466
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 468
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    move v8, v0

    .line 469
    .local v8, "italic":Z
    iget v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    if-ne v0, v2, :cond_5

    .line 470
    goto :goto_2

    :cond_5
    move v2, v1

    .line 471
    .local v2, "slant":I
    :goto_2
    invoke-static {}, Landroid/graphics/fonts/Font$Builder;->nInitBuilder()J

    move-result-wide v3

    .line 472
    .local v3, "builderPtr":J
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v0, :cond_6

    .line 473
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    array-length v5, v0

    :goto_3
    if-ge v1, v5, :cond_6

    aget-object v6, v0, v1

    .line 474
    .local v6, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v9

    invoke-static {v3, v4, v7, v9}, Landroid/graphics/fonts/Font$Builder;->nAddAxis(JIF)V

    .line 473
    .end local v6    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 477
    :cond_6
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 478
    .local v5, "readonlyBuffer":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v6, v0

    .line 482
    .local v6, "filePath":Ljava/lang/String;
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    if-nez v0, :cond_8

    .line 483
    iget-object v7, p0, Landroid/graphics/fonts/Font$Builder;->mLocaleList:Ljava/lang/String;

    move v9, v8

    .end local v8    # "italic":Z
    .local v9, "italic":Z
    iget v8, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    iget v10, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    invoke-static/range {v3 .. v10}, Landroid/graphics/fonts/Font$Builder;->nBuild(JLjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;IZI)J

    move-result-wide v0

    .line 485
    move-object v10, v5

    move-object v11, v6

    .end local v5    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "filePath":Ljava/lang/String;
    .local v0, "ptr":J
    .local v10, "readonlyBuffer":Ljava/nio/ByteBuffer;
    .local v11, "filePath":Ljava/lang/String;
    new-instance v5, Landroid/graphics/fonts/Font;

    invoke-direct {v5, v0, v1}, Landroid/graphics/fonts/Font;-><init>(J)V

    .local v5, "font":Landroid/graphics/fonts/Font;
    goto :goto_5

    .line 487
    .end local v0    # "ptr":J
    .end local v9    # "italic":Z
    .end local v10    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "filePath":Ljava/lang/String;
    .local v5, "readonlyBuffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v8    # "italic":Z
    :cond_8
    move-object v10, v5

    move-object v11, v6

    move v9, v8

    .end local v5    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v8    # "italic":Z
    .restart local v9    # "italic":Z
    .restart local v10    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .restart local v11    # "filePath":Ljava/lang/String;
    iget-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v0

    iget v7, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .end local v9    # "italic":Z
    .restart local v8    # "italic":Z
    iget v9, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    move-wide v5, v3

    move-wide v3, v0

    .end local v3    # "builderPtr":J
    .local v5, "builderPtr":J
    invoke-static/range {v3 .. v9}, Landroid/graphics/fonts/Font$Builder;->nClone(JJIZI)J

    move-result-wide v0

    .line 488
    move-wide v3, v5

    move v9, v8

    .end local v5    # "builderPtr":J
    .end local v8    # "italic":Z
    .restart local v0    # "ptr":J
    .restart local v3    # "builderPtr":J
    .restart local v9    # "italic":Z
    new-instance v5, Landroid/graphics/fonts/Font;

    invoke-direct {v5, v0, v1}, Landroid/graphics/fonts/Font;-><init>(J)V

    .line 490
    .local v5, "font":Landroid/graphics/fonts/Font;
    :goto_5
    return-object v5

    .line 450
    .end local v0    # "ptr":J
    .end local v2    # "slant":I
    .end local v3    # "builderPtr":J
    .end local v5    # "font":Landroid/graphics/fonts/Font;
    .end local v9    # "italic":Z
    .end local v10    # "readonlyBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "filePath":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read font contents"

    iget-object v2, p0, Landroid/graphics/fonts/Font$Builder;->mException:Ljava/io/IOException;

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;
    .locals 1
    .param p1, "variationSettings"    # Ljava/lang/String;

    .line 429
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 430
    return-object p0
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;
    .locals 1
    .param p1, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 440
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Landroid/graphics/fonts/FontVariationAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/fonts/FontVariationAxis;

    :goto_0
    iput-object v0, p0, Landroid/graphics/fonts/Font$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 441
    return-object p0
.end method

.method public setSlant(I)Landroid/graphics/fonts/Font$Builder;
    .locals 1
    .param p1, "slant"    # I

    .line 404
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/graphics/fonts/Font$Builder;->mItalic:I

    .line 405
    return-object p0
.end method

.method public setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;
    .locals 0
    .param p1, "ttcIndex"    # I

    .line 416
    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mTtcIndex:I

    .line 417
    return-object p0
.end method

.method public setWeight(I)Landroid/graphics/fonts/Font$Builder;
    .locals 2
    .param p1, "weight"    # I

    .line 386
    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    const/16 v1, 0x3e8

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 388
    iput p1, p0, Landroid/graphics/fonts/Font$Builder;->mWeight:I

    .line 389
    return-object p0
.end method
