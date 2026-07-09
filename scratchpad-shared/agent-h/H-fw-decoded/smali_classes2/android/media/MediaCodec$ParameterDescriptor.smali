.class public Landroid/media/MediaCodec$ParameterDescriptor;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterDescriptor"
.end annotation


# instance fields
.field private blacklist mName:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 5695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 5716
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5717
    return v0

    .line 5719
    :cond_0
    instance-of v1, p1, Landroid/media/MediaCodec$ParameterDescriptor;

    if-nez v1, :cond_1

    .line 5720
    return v0

    .line 5722
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/MediaCodec$ParameterDescriptor;

    .line 5723
    .local v1, "other":Landroid/media/MediaCodec$ParameterDescriptor;
    iget-object v2, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    iget-object v3, v1, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    iget v3, v1, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 5702
    iget-object v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 5711
    iget v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 5728
    iget-object v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    .line 5730
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 5728
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5730
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 5728
    return v0
.end method
