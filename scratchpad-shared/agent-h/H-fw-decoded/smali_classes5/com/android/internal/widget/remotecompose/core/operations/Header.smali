.class public Lcom/android/internal/widget/remotecompose/core/operations/Header;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "Header.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "Header"

.field private static final blacklist DATA_TYPE_FLOAT:S = 0x1s

.field private static final blacklist DATA_TYPE_INT:S = 0x0s

.field private static final blacklist DATA_TYPE_LONG:S = 0x2s

.field private static final blacklist DATA_TYPE_STRING:S = 0x3s

.field public static final blacklist DOC_CONTENT_DESCRIPTION:S = 0x9s

.field public static final blacklist DOC_DENSITY_AT_GENERATION:S = 0x7s

.field public static final blacklist DOC_DESIRED_FPS:S = 0x8s

.field public static final blacklist DOC_HEIGHT:S = 0x6s

.field public static final blacklist DOC_SOURCE:S = 0xbs

.field public static final blacklist DOC_WIDTH:S = 0x5s

.field private static final blacklist KEYS:[S

.field private static final blacklist KEY_NAMES:[Ljava/lang/String;

.field private static final blacklist MAGIC_NUMBER:I = 0x48c0000

.field private static final blacklist OP_CODE:I


# instance fields
.field blacklist mCapabilities:J

.field blacklist mDensity:F

.field blacklist mHeight:I

.field blacklist mMajorVersion:I

.field blacklist mMinorVersion:I

.field blacklist mPatchVersion:I

.field private blacklist mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    .line 110
    const-string v5, "DOC_CONTENT_DESCRIPTION"

    const-string v6, "DOC_SOURCE"

    const-string v1, "DOC_WIDTH"

    const-string v2, "DOC_HEIGHT"

    const-string v3, "DOC_DENSITY_AT_GENERATION"

    const-string v4, "DOC_DESIRED_FPS"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEY_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xbs
    .end array-data
.end method

.method public constructor blacklist <init>(IIIIIFJ)V
    .locals 2
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "patchVersion"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "density"    # F
    .param p7, "capabilities"    # J

    .line 138
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 55
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 58
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    .line 139
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    .line 140
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    .line 141
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    .line 142
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 143
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 144
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 145
    iput-wide p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    .line 146
    return-void
.end method

.method public constructor blacklist <init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .locals 3
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "patchVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p4, "properties":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 55
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 58
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 59
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    .line 155
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    .line 156
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    .line 157
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    .line 158
    if-eqz p4, :cond_0

    .line 159
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 160
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 161
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 162
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 164
    :cond_0
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V
    .locals 2
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # F
    .param p4, "capabilities"    # J

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 286
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 289
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 291
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 292
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .locals 2
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "type"    # [S
    .param p2, "value"    # [Ljava/lang/Object;

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 301
    const/high16 v1, 0x48c0000

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 302
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 304
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 305
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->writeMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 5
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 515
    const-string v0, "Header"

    const-string v1, "Protocol Operations"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 516
    const-string v1, "Document metadata, containing the version, original size & density, capabilities mask"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 519
    const-string v1, "MAJOR_VERSION"

    const-string v3, "Major version"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 520
    const-string v1, "MINOR_VERSION"

    const-string v4, "Minor version"

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 521
    const-string v1, "PATCH_VERSION"

    const-string v4, "Patch version"

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 522
    const-string v1, "WIDTH"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 523
    const-string v1, "HEIGHT"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 525
    const/16 v1, 0x8

    const-string v2, "CAPABILITIES"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 526
    return-void
.end method

.method private blacklist getFloat(IF)F
    .locals 2
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 186
    .local v0, "value":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 189
    :cond_0
    return p2
.end method

.method private blacklist getInt(II)I
    .locals 2
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 168
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 171
    :cond_0
    return p2
.end method

.method private blacklist getLong(IJ)J
    .locals 3
    .param p1, "key"    # I
    .param p2, "defaultValue"    # J

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 177
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 180
    :cond_0
    return-wide p2
.end method

.method private blacklist getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 196
    return-object v0

    .line 198
    :cond_0
    return-object p2
.end method

.method public static blacklist id()I
    .locals 1

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    .line 261
    const-string v0, "Header"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 10
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 407
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 408
    .local v1, "majorVersion":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 409
    .local v2, "minorVersion":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 410
    .local v3, "patchVersion":I
    const/high16 v0, 0x10000

    if-ge v1, v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 412
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 414
    .local v5, "height":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 415
    .local v6, "density":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v7

    .line 416
    .local v7, "capabilities":J
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIFJ)V

    .line 425
    .local v0, "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v0    # "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "density":F
    .end local v7    # "capabilities":J
    goto :goto_1

    .line 427
    :cond_0
    const v0, 0xffff

    and-int/2addr v1, v0

    .line 428
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 429
    .local v0, "length":I
    new-array v4, v0, [S

    .line 430
    .local v4, "types":[S
    new-array v5, v0, [Ljava/lang/Object;

    .line 431
    .local v5, "values":[Ljava/lang/Object;
    invoke-static {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    .line 432
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    .line 433
    .local v6, "map":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_1

    .line 434
    aget-short v8, v4, v7

    aget-object v9, v5, v7

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 433
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 436
    .end local v7    # "i":I
    :cond_1
    new-instance v7, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct {v7, v1, v2, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 437
    .local v7, "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v0    # "length":I
    .end local v4    # "types":[S
    .end local v5    # "values":[Ljava/lang/Object;
    .end local v6    # "map":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    .end local v7    # "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    :goto_1
    return-void
.end method

.method public static blacklist readDirect(Ljava/io/InputStream;)Lcom/android/internal/widget/remotecompose/core/operations/Header;
    .locals 13
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 317
    .local v1, "stream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .local v0, "type":I
    const-string v2, " != "

    if-nez v0, :cond_3

    .line 322
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v5, v3

    .line 323
    .local v5, "majorVersion":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 324
    .local v6, "minorVersion":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 326
    .local v7, "patchVersion":I
    const/high16 v3, 0x10000

    if-ge v5, v3, :cond_0

    .line 327
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 328
    .local v8, "width":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 330
    .local v9, "height":I
    const/high16 v10, 0x3f800000    # 1.0f

    .line 331
    .local v10, "density":F
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .line 332
    .local v11, "capabilities":J
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct/range {v4 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIFJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 332
    return-object v4

    .line 342
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "density":F
    .end local v11    # "capabilities":J
    :cond_0
    const/high16 v3, -0x10000

    and-int v4, v5, v3

    const/high16 v8, 0x48c0000

    if-ne v4, v8, :cond_2

    .line 349
    const v2, 0xffff

    and-int/2addr v2, v5

    .line 350
    .end local v5    # "majorVersion":I
    .local v2, "majorVersion":I
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 351
    .local v3, "len":I
    new-array v4, v3, [S

    .line 352
    .local v4, "types":[S
    new-array v5, v3, [Ljava/lang/Object;

    .line 353
    .local v5, "values":[Ljava/lang/Object;
    invoke-static {v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readMap(Ljava/io/DataInputStream;[S[Ljava/lang/Object;)V

    .line 354
    new-instance v8, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    .line 355
    .local v8, "map":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_1

    .line 356
    aget-short v10, v4, v9

    aget-object v11, v5, v9

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 355
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 358
    .end local v9    # "i":I
    :cond_1
    new-instance v9, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct {v9, v2, v6, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 358
    return-object v9

    .line 343
    .end local v2    # "majorVersion":I
    .end local v3    # "len":I
    .end local v4    # "types":[S
    .end local v8    # "map":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    .local v5, "majorVersion":I
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid header MAGIC_NUMBER "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    and-int/2addr v3, v5

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "stream":Ljava/io/DataInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v4

    .line 320
    .end local v5    # "majorVersion":I
    .end local v6    # "minorVersion":I
    .end local v7    # "patchVersion":I
    .restart local v1    # "stream":Ljava/io/DataInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid header "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "stream":Ljava/io/DataInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    .end local v0    # "type":I
    .restart local v1    # "stream":Ljava/io/DataInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 362
    throw v0
.end method

.method private static blacklist readMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .locals 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "types"    # [S
    .param p2, "values"    # [Ljava/lang/Object;

    .line 449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v1

    int-to-short v1, v1

    .line 451
    .local v1, "tag":S
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    .line 452
    .local v2, "itemLen":I
    shr-int/lit8 v3, v1, 0xa

    .line 453
    .local v3, "dataType":I
    and-int/lit8 v4, v1, 0x3f

    int-to-short v4, v4

    aput-short v4, p1, v0

    .line 455
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 466
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v0

    goto :goto_1

    .line 463
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p2, v0

    .line 464
    goto :goto_1

    .line 460
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, p2, v0

    .line 461
    goto :goto_1

    .line 457
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v0

    .line 458
    nop

    .line 449
    .end local v1    # "tag":S
    .end local v2    # "itemLen":I
    .end local v3    # "dataType":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "i":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist readMap(Ljava/io/DataInputStream;[S[Ljava/lang/Object;)V
    .locals 7
    .param p0, "stream"    # Ljava/io/DataInputStream;
    .param p1, "types"    # [S
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 375
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 376
    .local v1, "tag":S
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 377
    .local v2, "itemLen":I
    shr-int/lit8 v3, v1, 0xa

    .line 378
    .local v3, "dataType":I
    and-int/lit8 v4, v1, 0x3f

    int-to-short v4, v4

    aput-short v4, p1, v0

    .line 380
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 391
    :pswitch_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 392
    .local v4, "slen":I
    new-array v5, v4, [B

    .line 393
    .local v5, "data":[B
    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 394
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v6, p2, v0

    goto :goto_1

    .line 388
    .end local v4    # "slen":I
    .end local v5    # "data":[B
    :pswitch_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p2, v0

    .line 389
    goto :goto_1

    .line 385
    :pswitch_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, p2, v0

    .line 386
    goto :goto_1

    .line 382
    :pswitch_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v0

    .line 383
    nop

    .line 374
    .end local v1    # "tag":S
    .end local v2    # "itemLen":I
    .end local v3    # "dataType":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "i":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist writeMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .locals 6
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "types"    # [S
    .param p2, "values"    # [Ljava/lang/Object;

    .line 480
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 481
    aget-short v1, p1, v0

    .line 482
    .local v1, "tag":S
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/String;

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    .line 483
    or-int/lit16 v2, v1, 0xc00

    int-to-short v1, v2

    .line 484
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 485
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/String;

    .line 486
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 487
    .local v4, "data":[B
    array-length v5, v4

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 488
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 489
    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "data":[B
    goto :goto_1

    :cond_0
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 490
    or-int/lit8 v2, v1, 0x0

    int-to-short v1, v2

    .line 491
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 492
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 493
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    goto :goto_1

    .line 494
    :cond_1
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 495
    or-int/lit16 v2, v1, 0x400

    int-to-short v1, v2

    .line 496
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 497
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 499
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    goto :goto_1

    .line 500
    :cond_2
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 501
    or-int/lit16 v2, v1, 0x800

    int-to-short v1, v2

    .line 502
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 503
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 504
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 480
    .end local v1    # "tag":S
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    .end local v0    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 9
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 238
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    move-object v0, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v0, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->header(IIIIIJLcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 246
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "indent"    # Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(S)Ljava/lang/Object;
    .locals 1
    .param p1, "property"    # S

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setVersion(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 3
    .param p1, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 534
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setVersion(III)V

    .line 535
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 210
    const-string v0, ""

    .line 211
    .local v0, "prop":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v2, "HEADER v"

    const-string v3, "."

    if-eqz v1, :cond_2

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 213
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    aget-short v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 214
    .local v4, "p":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEY_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .end local v4    # "p":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 220
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 204
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    .line 205
    return-void
.end method
