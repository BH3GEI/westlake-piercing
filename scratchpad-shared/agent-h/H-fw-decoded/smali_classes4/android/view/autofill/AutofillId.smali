.class public final Landroid/view/autofill/AutofillId;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAG_HAS_SESSION:I = 0x4

.field private static final blacklist FLAG_IS_VIRTUAL_INT:I = 0x1

.field private static final blacklist FLAG_IS_VIRTUAL_LONG:I = 0x2

.field public static final blacklist NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

.field public static final blacklist NO_SESSION:I


# instance fields
.field private blacklist mFlags:I

.field private blacklist mSessionId:I

.field private final greylist-max-o mViewId:I

.field private final blacklist mVirtualIntId:I

.field private final blacklist mVirtualLongId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    sput-object v0, Landroid/view/autofill/AutofillId;->NO_AUTOFILL_ID:Landroid/view/autofill/AutofillId;

    .line 313
    new-instance v0, Landroid/view/autofill/AutofillId$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillId$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 6
    .param p1, "id"    # I

    .line 51
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    .end local p1    # "id":I
    .local v2, "id":I
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 52
    return-void
.end method

.method public constructor greylist-max-o <init>(II)V
    .locals 6
    .param p1, "hostId"    # I
    .param p2, "virtualChildId"    # I

    .line 63
    int-to-long v3, p2

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    .end local p1    # "hostId":I
    .local v2, "hostId":I
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 64
    return-void
.end method

.method private constructor blacklist <init>(IIJI)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "parentId"    # I
    .param p3, "virtualChildId"    # J
    .param p5, "sessionId"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    .line 79
    iput p2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 80
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    long-to-int v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    .line 81
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move-wide v0, p3

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    .line 82
    iput p5, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(IIJILandroid/view/autofill/AutofillId-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;I)V
    .locals 6
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # I

    .line 57
    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    int-to-long v3, p2

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;II)V
    .locals 6
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # I
    .param p3, "sessionId"    # I

    .line 68
    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    int-to-long v3, p2

    const/4 v1, 0x5

    move-object v0, p0

    move v5, p3

    .end local p3    # "sessionId":I
    .local v5, "sessionId":I
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/autofill/AutofillId;JI)V
    .locals 6
    .param p1, "hostId"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # J
    .param p4, "sessionId"    # I

    .line 74
    const/4 v1, 0x6

    iget v2, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    .end local p2    # "virtualChildId":J
    .end local p4    # "sessionId":I
    .local v3, "virtualChildId":J
    .local v5, "sessionId":I
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    .line 75
    return-void
.end method

.method public static whitelist create(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .locals 2
    .param p0, "host"    # Landroid/view/View;
    .param p1, "virtualId"    # I

    .line 102
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;I)V

    return-object v0
.end method

.method public static blacklist withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;
    .locals 7
    .param p0, "id"    # Landroid/view/autofill/AutofillId;

    .line 110
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v2, v0, -0x5

    .line 112
    .local v2, "flags":I
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    move-wide v4, v0

    goto :goto_0

    .line 113
    :cond_0
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    int-to-long v0, v0

    move-wide v4, v0

    :goto_0
    nop

    .line 114
    .local v4, "virtualChildId":J
    new-instance v1, Landroid/view/autofill/AutofillId;

    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJI)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 257
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 258
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 259
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 260
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 261
    .local v2, "other":Landroid/view/autofill/AutofillId;
    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v3, v4, :cond_3

    return v1

    .line 262
    :cond_3
    iget v3, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v3, v4, :cond_4

    return v1

    .line 263
    :cond_4
    iget-wide v3, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v5, v2, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v1

    .line 264
    :cond_5
    iget v3, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mSessionId:I

    if-eq v3, v4, :cond_6

    return v1

    .line 265
    :cond_6
    return v0
.end method

.method public blacklist equalsIgnoreSession(Landroid/view/autofill/AutofillId;)Z
    .locals 6
    .param p1, "other"    # Landroid/view/autofill/AutofillId;

    .line 271
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 272
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 273
    :cond_1
    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v2, v3, :cond_2

    return v1

    .line 274
    :cond_2
    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 275
    :cond_3
    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v4, p1, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 276
    :cond_4
    return v0
.end method

.method public whitelist getAutofillVirtualId()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    return v0
.end method

.method public whitelist getSessionId()I
    .locals 1

    .line 225
    iget v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    return v0
.end method

.method public whitelist getViewId()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    return v0
.end method

.method public blacklist getVirtualChildIntId()I
    .locals 1

    .line 162
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    return v0
.end method

.method public blacklist getVirtualChildLongId()J
    .locals 2

    .line 174
    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    return-wide v0
.end method

.method public blacklist hasSession()Z
    .locals 1

    .line 215
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    .line 246
    const/16 v0, 0x1f

    .line 247
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 248
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    add-int/2addr v2, v3

    .line 249
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    add-int/2addr v1, v3

    .line 250
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    iget-wide v5, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 251
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    add-int/2addr v1, v3

    .line 252
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist isInAutofillSession()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v0

    return v0
.end method

.method public blacklist isNonVirtual()Z
    .locals 1

    .line 210
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isVirtual()Z
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isNonVirtual()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isVirtualInt()Z
    .locals 2

    .line 187
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isVirtualLong()Z
    .locals 1

    .line 200
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist resetSessionId()V
    .locals 1

    .line 236
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    .line 238
    return-void
.end method

.method public blacklist setSessionId(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 230
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    .line 231
    iput p1, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    .line 232
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const-string v1, ":i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    const-string v1, ":l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 301
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Landroid/view/autofill/AutofillId;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget v0, p0, Landroid/view/autofill/AutofillId;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualIntId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualLong()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-wide v0, p0, Landroid/view/autofill/AutofillId;->mVirtualLongId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 311
    :cond_2
    :goto_0
    return-void
.end method
