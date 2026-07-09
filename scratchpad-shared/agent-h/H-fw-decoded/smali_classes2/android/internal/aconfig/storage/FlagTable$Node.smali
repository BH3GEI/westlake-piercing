.class public Landroid/internal/aconfig/storage/FlagTable$Node;
.super Ljava/lang/Object;
.source "FlagTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/FlagTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private blacklist mFlagIndex:I

.field private blacklist mFlagName:Ljava/lang/String;

.field private blacklist mFlagType:Landroid/internal/aconfig/storage/FlagType;

.field private blacklist mNextOffset:I

.field private blacklist mPackageId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlagName(Landroid/internal/aconfig/storage/FlagTable$Node;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/FlagTable$Node;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageId(Landroid/internal/aconfig/storage/FlagTable$Node;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Node;
    .locals 2
    .param p0, "reader"    # Landroid/internal/aconfig/storage/ByteBufferReader;

    .line 137
    new-instance v0, Landroid/internal/aconfig/storage/FlagTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagTable$Node;-><init>()V

    .line 138
    .local v0, "node":Landroid/internal/aconfig/storage/FlagTable$Node;
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    .line 139
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readShort()I

    move-result v1

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagType;->fromInt(I)Landroid/internal/aconfig/storage/FlagType;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    .line 141
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readShort()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    .line 142
    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    .line 143
    iget v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    :goto_0
    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    .line 144
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 155
    return v0

    .line 158
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/internal/aconfig/storage/FlagTable$Node;

    if-nez v2, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/internal/aconfig/storage/FlagTable$Node;

    .line 163
    .local v2, "other":Landroid/internal/aconfig/storage/FlagTable$Node;
    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    iget-object v4, v2, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    iget-object v4, v2, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    .line 164
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    iget v4, v2, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    iget v4, v2, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    iget v4, v2, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 163
    :goto_0
    return v0

    .line 159
    .end local v2    # "other":Landroid/internal/aconfig/storage/FlagTable$Node;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getFlagIndex()I
    .locals 1

    .line 183
    iget v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    return v0
.end method

.method public blacklist getFlagName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFlagType()Landroid/internal/aconfig/storage/FlagType;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    return-object v0
.end method

.method public blacklist getNextOffset()I
    .locals 1

    .line 187
    iget v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    return v0
.end method

.method public blacklist getPackageId()I
    .locals 1

    .line 179
    iget v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    .line 149
    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    iget-object v1, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    iget v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
