.class public final Landroid/text/style/LineBreakConfigSpan;
.super Ljava/lang/Object;
.source "LineBreakConfigSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/LineBreakConfigSpan;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNoBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private static final blacklist sNoHyphenationConfig:Landroid/graphics/text/LineBreakConfig;


# instance fields
.field private final blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 95
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setHyphenation(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    sput-object v0, Landroid/text/style/LineBreakConfigSpan;->sNoHyphenationConfig:Landroid/graphics/text/LineBreakConfig;

    .line 99
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 100
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    sput-object v0, Landroid/text/style/LineBreakConfigSpan;->sNoBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 131
    new-instance v0, Landroid/text/style/LineBreakConfigSpan$1;

    invoke-direct {v0}, Landroid/text/style/LineBreakConfigSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/LineBreakConfigSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/text/LineBreakConfig;)V
    .locals 0
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 44
    return-void
.end method

.method public static whitelist createNoBreakSpan()Landroid/text/style/LineBreakConfigSpan;
    .locals 2

    .line 66
    new-instance v0, Landroid/text/style/LineBreakConfigSpan;

    sget-object v1, Landroid/text/style/LineBreakConfigSpan;->sNoBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v0, v1}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    return-object v0
.end method

.method public static whitelist createNoHyphenationSpan()Landroid/text/style/LineBreakConfigSpan;
    .locals 2

    .line 74
    new-instance v0, Landroid/text/style/LineBreakConfigSpan;

    sget-object v1, Landroid/text/style/LineBreakConfigSpan;->sNoHyphenationConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v0, v1}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 79
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 80
    :cond_0
    instance-of v0, p1, Landroid/text/style/LineBreakConfigSpan;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 81
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/text/style/LineBreakConfigSpan;

    .line 82
    .local v0, "that":Landroid/text/style/LineBreakConfigSpan;
    iget-object v1, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    iget-object v2, v0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/text/style/LineBreakConfigSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .locals 1

    .line 121
    const/16 v0, 0x1e

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineBreakConfigSpan{mLineBreakConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LineBreakConfigSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 111
    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget-object v0, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    return-void
.end method
