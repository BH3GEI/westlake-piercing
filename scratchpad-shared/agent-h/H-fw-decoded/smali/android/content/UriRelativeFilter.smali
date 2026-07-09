.class public final Landroid/content/UriRelativeFilter;
.super Ljava/lang/Object;
.source "UriRelativeFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UriRelativeFilter$UriPart;
    }
.end annotation


# static fields
.field private static final FILTER_STR:Ljava/lang/String; = "filter"

.field public static final FRAGMENT:I = 0x2

.field private static final PART_STR:Ljava/lang/String; = "part"

.field public static final PATH:I = 0x0

.field private static final PATTERN_STR:Ljava/lang/String; = "pattern"

.field public static final QUERY:I = 0x1

.field static final URI_RELATIVE_FILTER_STR:Ljava/lang/String; = "uriRelativeFilter"


# instance fields
.field private final mFilter:Ljava/lang/String;

.field private final mPatternType:I

.field private final mUriPart:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 3
    .param p1, "uriPart"    # I
    .param p2, "patternType"    # I
    .param p3, "filter"    # Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    .line 95
    const-class v0, Landroid/content/UriRelativeFilter$UriPart;

    iget v1, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 97
    iput p2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    .line 98
    const-class v0, Landroid/os/PatternMatcher$PatternType;

    iget v1, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 100
    iput-object p3, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    .line 101
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/UriRelativeFilterParcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/content/UriRelativeFilterParcel;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iget v0, p1, Landroid/content/UriRelativeFilterParcel;->uriPart:I

    iput v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    .line 273
    iget v0, p1, Landroid/content/UriRelativeFilterParcel;->patternType:I

    iput v0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    .line 274
    iget-object v0, p1, Landroid/content/UriRelativeFilterParcel;->filter:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    .line 275
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-string/jumbo v0, "part"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    .line 266
    const-string/jumbo v0, "pattern"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    .line 267
    const-string v0, "filter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    .line 268
    return-void
.end method

.method private matchQuery(Landroid/os/PatternMatcher;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pe"    # Landroid/os/PatternMatcher;
    .param p2, "query"    # Ljava/lang/String;

    .line 151
    if-eqz p2, :cond_2

    .line 152
    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "params":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 154
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 157
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 156
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "params":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private patternTypeToString()Ljava/lang/String;
    .locals 1

    .line 195
    iget v0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    packed-switch v0, :pswitch_data_0

    .line 207
    const-string v0, "UNKNOWN"

    return-object v0

    .line 205
    :pswitch_0
    const-string v0, "SUFFIX"

    return-object v0

    .line 203
    :pswitch_1
    const-string v0, "ADVANCED_GLOB"

    return-object v0

    .line 201
    :pswitch_2
    const-string v0, "GLOB"

    return-object v0

    .line 199
    :pswitch_3
    const-string v0, "PREFIX"

    return-object v0

    .line 197
    :pswitch_4
    const-string v0, "LITERAL"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uriPartToString()Ljava/lang/String;
    .locals 1

    .line 182
    iget v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    packed-switch v0, :pswitch_data_0

    .line 190
    const-string v0, "UNKNOWN"

    return-object v0

    .line 188
    :pswitch_0
    const-string v0, "FRAGMENT"

    return-object v0

    .line 186
    :pswitch_1
    const-string v0, "QUERY"

    return-object v0

    .line 184
    :pswitch_2
    const-string v0, "PATH"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 165
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 166
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 167
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 168
    const-wide v2, 0x10900000003L

    iget-object v4, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 170
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 231
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 232
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 234
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/content/UriRelativeFilter;

    .line 235
    .local v2, "that":Landroid/content/UriRelativeFilter;
    iget v3, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    iget v4, v2, Landroid/content/UriRelativeFilter;->mUriPart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    iget v4, v2, Landroid/content/UriRelativeFilter;->mPatternType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    .line 237
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 235
    :goto_0
    return v0

    .line 232
    .end local v2    # "that":Landroid/content/UriRelativeFilter;
    :cond_3
    :goto_1
    return v1
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternType()I
    .locals 1

    .line 116
    iget v0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    return v0
.end method

.method public getUriPart()I
    .locals 1

    .line 109
    iget v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 242
    const/4 v0, 0x1

    .line 243
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    add-int/2addr v1, v2

    .line 244
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    add-int/2addr v0, v2

    .line 245
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 246
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public matchData(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "data"    # Landroid/net/Uri;

    .line 137
    new-instance v0, Landroid/os/PatternMatcher;

    iget-object v1, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    iget v2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 138
    .local v0, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {p0}, Landroid/content/UriRelativeFilter;->getUriPart()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 146
    const/4 v1, 0x0

    return v1

    .line 144
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 142
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/content/UriRelativeFilter;->matchQuery(Landroid/os/PatternMatcher;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 140
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toParcel()Landroid/content/UriRelativeFilterParcel;
    .locals 2

    .line 222
    new-instance v0, Landroid/content/UriRelativeFilterParcel;

    invoke-direct {v0}, Landroid/content/UriRelativeFilterParcel;-><init>()V

    .line 223
    .local v0, "parcel":Landroid/content/UriRelativeFilterParcel;
    iget v1, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    iput v1, v0, Landroid/content/UriRelativeFilterParcel;->uriPart:I

    .line 224
    iget v1, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    iput v1, v0, Landroid/content/UriRelativeFilterParcel;->patternType:I

    .line 225
    iget-object v1, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/UriRelativeFilterParcel;->filter:Ljava/lang/String;

    .line 226
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UriRelativeFilter { uriPart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-direct {p0}, Landroid/content/UriRelativeFilter;->uriPartToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", patternType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    invoke-direct {p0}, Landroid/content/UriRelativeFilter;->patternTypeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 251
    iget v0, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    const-string/jumbo v1, "uriRelativeFilter"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget v2, p0, Landroid/content/UriRelativeFilter;->mPatternType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pattern"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    iget v2, p0, Landroid/content/UriRelativeFilter;->mUriPart:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "part"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    const-string v2, "filter"

    iget-object v3, p0, Landroid/content/UriRelativeFilter;->mFilter:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    return-void
.end method
