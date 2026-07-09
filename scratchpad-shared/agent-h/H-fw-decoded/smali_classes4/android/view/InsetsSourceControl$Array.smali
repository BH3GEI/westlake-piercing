.class public Landroid/view/InsetsSourceControl$Array;
.super Ljava/lang/Object;
.source "InsetsSourceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsSourceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSourceControl$Array;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mControls:[Landroid/view/InsetsSourceControl;

.field private blacklist mSeq:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 382
    new-instance v0, Landroid/view/InsetsSourceControl$Array$1;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$Array$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 295
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 305
    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceControl$Array;->readFromParcel(Landroid/os/Parcel;)V

    .line 306
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSourceControl$Array;Z)V
    .locals 1
    .param p1, "other"    # Landroid/view/InsetsSourceControl$Array;
    .param p2, "copyControls"    # Z

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 301
    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsSourceControl$Array;->setTo(Landroid/view/InsetsSourceControl$Array;Z)V

    .line 302
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 394
    if-ne p0, p1, :cond_0

    .line 395
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 400
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/InsetsSourceControl$Array;

    .line 402
    .local v0, "other":Landroid/view/InsetsSourceControl$Array;
    iget-object v1, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    iget-object v2, v0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 398
    .end local v0    # "other":Landroid/view/InsetsSourceControl$Array;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist get()[Landroid/view/InsetsSourceControl;
    .locals 1

    .line 339
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method public blacklist getSeq()I
    .locals 1

    .line 309
    iget v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 407
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 372
    sget-object v0, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsSourceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 374
    return-void
.end method

.method public blacklist release()V
    .locals 5

    .line 344
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 348
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_1

    .line 349
    new-instance v4, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 347
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_2
    return-void
.end method

.method public blacklist set([Landroid/view/InsetsSourceControl;Z)V
    .locals 4
    .param p1, "controls"    # [Landroid/view/InsetsSourceControl;
    .param p2, "copyControls"    # Z

    .line 324
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Landroid/view/InsetsSourceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    .line 330
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 331
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsSourceControl;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    aput-object v2, v1, v0

    .line 330
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 335
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 325
    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    .line 326
    return-void
.end method

.method public blacklist setParcelableFlags(I)V
    .locals 4
    .param p1, "parcelableFlags"    # I

    .line 356
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 360
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-eqz v3, :cond_1

    .line 361
    invoke-virtual {v3, p1}, Landroid/view/InsetsSourceControl;->setParcelableFlags(I)V

    .line 359
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_2
    return-void
.end method

.method public blacklist setSeq(I)V
    .locals 0
    .param p1, "seq"    # I

    .line 313
    iput p1, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 314
    return-void
.end method

.method public blacklist setTo(Landroid/view/InsetsSourceControl$Array;Z)V
    .locals 1
    .param p1, "other"    # Landroid/view/InsetsSourceControl$Array;
    .param p2, "copyControls"    # Z

    .line 318
    iget-object v0, p1, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p0, v0, p2}, Landroid/view/InsetsSourceControl$Array;->set([Landroid/view/InsetsSourceControl;Z)V

    .line 319
    iget v0, p1, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    iput v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    .line 320
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 378
    iget-object v0, p0, Landroid/view/InsetsSourceControl$Array;->mControls:[Landroid/view/InsetsSourceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 379
    iget v0, p0, Landroid/view/InsetsSourceControl$Array;->mSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return-void
.end method
