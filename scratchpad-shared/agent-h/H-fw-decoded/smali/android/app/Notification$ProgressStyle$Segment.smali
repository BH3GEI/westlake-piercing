.class public final Landroid/app/Notification$ProgressStyle$Segment;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$ProgressStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# instance fields
.field private mColor:I

.field private mId:I

.field private mLength:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmColor(Landroid/app/Notification$ProgressStyle$Segment;)I
    .locals 0

    iget p0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    return p0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 12044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12035
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    .line 12036
    iput v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    .line 12045
    iput p1, p0, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    .line 12046
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 12097
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 12098
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 12099
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    .line 12100
    .local v2, "segment":Landroid/app/Notification$ProgressStyle$Segment;
    iget v3, p0, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    iget v4, v2, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    iget v4, v2, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    iget v4, v2, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 12098
    .end local v2    # "segment":Landroid/app/Notification$ProgressStyle$Segment;
    :cond_3
    :goto_1
    return v1
.end method

.method public getColor()I
    .locals 1

    .line 12081
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 12063
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 12054
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 12106
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Segment;->mLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setColor(I)Landroid/app/Notification$ProgressStyle$Segment;
    .locals 0
    .param p1, "color"    # I

    .line 12088
    iput p1, p0, Landroid/app/Notification$ProgressStyle$Segment;->mColor:I

    .line 12089
    return-object p0
.end method

.method public setId(I)Landroid/app/Notification$ProgressStyle$Segment;
    .locals 0
    .param p1, "id"    # I

    .line 12070
    iput p1, p0, Landroid/app/Notification$ProgressStyle$Segment;->mId:I

    .line 12071
    return-object p0
.end method
