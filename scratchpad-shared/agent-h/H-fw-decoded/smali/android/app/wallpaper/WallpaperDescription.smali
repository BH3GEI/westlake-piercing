.class public final Landroid/app/wallpaper/WallpaperDescription;
.super Ljava/lang/Object;
.source "WallpaperDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaper/WallpaperDescription$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpaper/WallpaperDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WallpaperDescription"

.field private static final XML_TAG_CONTENT:Ljava/lang/String; = "content"

.field private static final XML_TAG_DESCRIPTION:Ljava/lang/String; = "description"


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mContent:Landroid/os/PersistableBundle;

.field private final mContextDescription:Ljava/lang/CharSequence;

.field private final mContextUri:Landroid/net/Uri;

.field private final mCropHints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:Ljava/lang/String;

.field private final mSampleSize:F

.field private final mThumbnail:Landroid/net/Uri;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$SJjydMtP7lVlIyL2p9b8fQyzjFc(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription;->lambda$new$1(Landroid/os/Parcel;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qLyMJewk5i-jk61el0hS27e3fpQ(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;ILandroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/wallpaper/WallpaperDescription;->lambda$writeToParcel$2(Landroid/os/Parcel;ILandroid/util/Pair;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 327
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$1;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$1;-><init>()V

    sput-object v0, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;F)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "thumbnail"    # Landroid/net/Uri;
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p6, "contextUri"    # Landroid/net/Uri;
    .param p7, "contextDescription"    # Ljava/lang/CharSequence;
    .param p8, "content"    # Landroid/os/PersistableBundle;
    .param p10, "sampleSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/CharSequence;",
            "Landroid/os/PersistableBundle;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;F)V"
        }
    .end annotation

    .line 90
    .local p5, "description":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p9, "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    .line 92
    iput-object p2, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    .line 94
    iput-object p4, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    .line 95
    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    .line 96
    iput-object p6, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    .line 97
    iput-object p7, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    .line 98
    if-eqz p8, :cond_1

    move-object v0, p8

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_1
    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    .line 99
    iput-object p9, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    .line 100
    iput p10, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;FLandroid/app/wallpaper/WallpaperDescription-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/app/wallpaper/WallpaperDescription;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;F)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    .line 311
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    .line 314
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    .line 316
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    .line 317
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    .line 318
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    .line 324
    return-void
.end method

.method private static fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 286
    if-nez p0, :cond_0

    .line 287
    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_0
    const/16 v0, 0x3f

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/app/wallpaper/WallpaperDescription;->removeTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$1(Landroid/os/Parcel;Landroid/util/Pair;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "pair"    # Landroid/util/Pair;

    .line 319
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    .local v0, "orientation":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 321
    .local v1, "crop":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    :cond_0
    return-void
.end method

.method static synthetic lambda$restoreFromXml$0(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;Landroid/util/Pair;)V
    .locals 10
    .param p0, "in"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "cropHints"    # Landroid/util/SparseArray;
    .param p2, "pair"    # Landroid/util/Pair;

    .line 247
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    .local v0, "orientation":I
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 249
    .local v1, "attrName":Ljava/lang/String;
    new-instance v2, Landroid/graphics/Rect;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cropLeft"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p0, v4, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cropTop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-interface {p0, v4, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropRight"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 252
    invoke-interface {p0, v4, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cropBottom"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 253
    invoke-interface {p0, v4, v8, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v3, v6, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 254
    .local v2, "crop":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    :cond_0
    return-void
.end method

.method private synthetic lambda$writeToParcel$2(Landroid/os/Parcel;ILandroid/util/Pair;)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "pair"    # Landroid/util/Pair;

    .line 355
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 356
    .local v0, "orientation":I
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 357
    return-void
.end method

.method private static removeTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 296
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 299
    .local v0, "end":I
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/wallpaper/WallpaperDescription;
    .locals 19
    .param p0, "in"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 232
    move-object/from16 v0, p0

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 233
    .local v1, "outerDepth":I
    const-string v2, "component"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "component":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_0

    .line 235
    :cond_0
    move-object v4, v3

    :goto_0
    move-object v6, v4

    .line 236
    .local v6, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v4, "id"

    invoke-interface {v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "id":Ljava/lang/String;
    const-string/jumbo v4, "thumbnail"

    invoke-interface {v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "thumbnailString":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v8, v5

    goto :goto_1

    :cond_1
    move-object v8, v3

    .line 239
    .local v8, "thumbnail":Landroid/net/Uri;
    :goto_1
    const-string/jumbo v5, "title"

    invoke-interface {v0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/app/wallpaper/WallpaperDescription;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 240
    .local v9, "title":Ljava/lang/CharSequence;
    const-string v5, "contexturi"

    invoke-interface {v0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 241
    .local v16, "contextUriString":Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v11, v5

    goto :goto_2

    :cond_2
    move-object v11, v3

    .line 242
    .local v11, "contextUri":Landroid/net/Uri;
    :goto_2
    nop

    .line 243
    const-string v5, "contextdescription"

    invoke-interface {v0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-static {v5}, Landroid/app/wallpaper/WallpaperDescription;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 245
    .local v12, "contextDescription":Ljava/lang/CharSequence;
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 246
    .local v14, "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v5

    new-instance v10, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0, v14}, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    invoke-interface {v5, v10}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 256
    const-string/jumbo v5, "sampleSize"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v15

    .line 258
    .local v15, "sampleSize":F
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v10, "description":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    move-object v13, v3

    .line 261
    .local v13, "content":Landroid/os/PersistableBundle;
    :goto_3
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    move v5, v3

    move-object/from16 v17, v2

    .end local v2    # "component":Ljava/lang/String;
    .local v5, "type":I
    .local v17, "component":Ljava/lang/String;
    const/4 v2, 0x1

    if-eq v3, v2, :cond_a

    const/4 v2, 0x3

    if-ne v5, v2, :cond_4

    .line 262
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v18, v1

    goto :goto_8

    .line 263
    :cond_4
    :goto_4
    if-eq v5, v2, :cond_9

    const/4 v2, 0x4

    if-ne v5, v2, :cond_5

    .line 264
    move/from16 v18, v1

    goto :goto_7

    .line 266
    :cond_5
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "name":Ljava/lang/String;
    const-string v3, "description"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 268
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    move/from16 v18, v1

    .end local v1    # "outerDepth":I
    .local v18, "outerDepth":I
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 269
    invoke-interface {v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v18

    goto :goto_5

    .end local v3    # "i":I
    :cond_6
    goto :goto_6

    .line 271
    .end local v18    # "outerDepth":I
    .restart local v1    # "outerDepth":I
    :cond_7
    move/from16 v18, v1

    .end local v1    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    const-string v1, "content"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 272
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    move-object v13, v1

    .line 274
    .end local v2    # "name":Ljava/lang/String;
    :cond_8
    :goto_6
    move-object/from16 v2, v17

    move/from16 v1, v18

    goto :goto_3

    .line 263
    .end local v18    # "outerDepth":I
    .restart local v1    # "outerDepth":I
    :cond_9
    move/from16 v18, v1

    .line 261
    .end local v1    # "outerDepth":I
    .end local v5    # "type":I
    .restart local v18    # "outerDepth":I
    :goto_7
    move-object/from16 v2, v17

    move/from16 v1, v18

    goto :goto_3

    .end local v18    # "outerDepth":I
    .restart local v1    # "outerDepth":I
    .restart local v5    # "type":I
    :cond_a
    move/from16 v18, v1

    .line 276
    .end local v1    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_8
    move v3, v5

    .end local v5    # "type":I
    .local v3, "type":I
    new-instance v5, Landroid/app/wallpaper/WallpaperDescription;

    invoke-direct/range {v5 .. v15}, Landroid/app/wallpaper/WallpaperDescription;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;F)V

    return-object v5
.end method

.method private static screenDimensionPairs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 560
    new-instance v0, Landroid/util/Pair;

    .line 561
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Portrait"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    .line 562
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Landscape"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    .line 563
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SquarePortrait"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    .line 564
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "SquareLandscape"

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 560
    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Ljava/lang/CharSequence;

    .line 281
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 282
    .local v0, "s":Landroid/text/Spanned;
    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 176
    :cond_0
    instance-of v1, p1, Landroid/app/wallpaper/WallpaperDescription;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/app/wallpaper/WallpaperDescription;

    .line 177
    .local v1, "that":Landroid/app/wallpaper/WallpaperDescription;
    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 176
    .end local v1    # "that":Landroid/app/wallpaper/WallpaperDescription;
    :cond_2
    return v2
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContent()Landroid/os/PersistableBundle;
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getContextDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContextUri()Landroid/net/Uri;
    .locals 1

    .line 137
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCropHints()Landroid/util/SparseArray;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getDescription()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleSize()F
    .locals 1

    .line 168
    iget v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    return v0
.end method

.method public getThumbnail()Landroid/net/Uri;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 183
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 9
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 190
    const-string v0, "content"

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "component"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    :cond_0
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "id"

    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    :cond_1
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "thumbnail"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    :cond_2
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "title"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    :cond_3
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "contexturi"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    :cond_4
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 198
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "contextdescription"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    :cond_5
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 202
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 203
    .local v4, "orientation":I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 204
    .local v5, "attrName":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 205
    .local v6, "cropHint":Landroid/graphics/Rect;
    if-nez v6, :cond_6

    goto :goto_0

    .line 206
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropLeft"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-interface {p1, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropTop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-interface {p1, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropRight"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    invoke-interface {p1, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropBottom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "orientation":I
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v6    # "cropHint":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 211
    :cond_7
    const-string/jumbo v1, "sampleSize"

    iget v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const-string v1, "description"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "s":Ljava/lang/CharSequence;
    const-string v5, "descriptionline"

    invoke-static {v4}, Landroid/app/wallpaper/WallpaperDescription;->toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 215
    .end local v4    # "s":Ljava/lang/CharSequence;
    :cond_8
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    :try_start_0
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    nop

    :goto_2
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    goto :goto_3

    .line 225
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 220
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v3, "WallpaperDescription"

    const-string/jumbo v4, "unable to convert wallpaper content to XML"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    nop

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_2

    .line 227
    :goto_3
    return-void

    .line 225
    :goto_4
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    throw v1
.end method

.method public toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;
    .locals 2

    .line 369
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    .line 370
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    .line 371
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setId(Ljava/lang/String;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    .line 372
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setThumbnail(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    .line 373
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    .line 374
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setDescription(Ljava/util/List;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    .line 375
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setContextUri(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setContextDescription(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    .line 377
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setContent(Landroid/os/PersistableBundle;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    .line 378
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setCropHints(Landroid/util/SparseArray;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    .line 379
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setSampleSize(F)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    .line 369
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 346
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 347
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 349
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 352
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 354
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;-><init>(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 358
    iget v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 359
    return-void
.end method
