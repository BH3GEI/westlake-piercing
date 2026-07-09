.class public final Landroid/app/AppOpsManager$NotedOp;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotedOp"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$NotedOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributionTag:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private final mOp:I

.field private final mPackageName:Ljava/lang/String;

.field private final mShouldCollectAsyncNotedOp:Z

.field private final mShouldCollectMessage:Z

.field private final mUid:I

.field private final mVirtualDeviceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7604
    new-instance v0, Landroid/app/AppOpsManager$NotedOp$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$NotedOp$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$NotedOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "shouldCollectMessage"    # Z

    .line 7498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7499
    iput p1, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    .line 7500
    iput p2, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    .line 7501
    iput-object p3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    .line 7502
    iput-object p4, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    .line 7503
    iput p5, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    .line 7504
    iput-object p6, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    .line 7505
    iput-boolean p7, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7506
    iput-boolean p8, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    .line 7507
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 7509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    .line 7511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    .line 7512
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    .line 7513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    .line 7514
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    .line 7515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    .line 7516
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7517
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    .line 7518
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 7554
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 7571
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 7572
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 7573
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$NotedOp;

    .line 7574
    .local v2, "that":Landroid/app/AppOpsManager$NotedOp;
    iget v3, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    iget v4, v2, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    iget v4, v2, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    .line 7576
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    .line 7577
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    iget v4, v2, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    .line 7579
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7580
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    .line 7581
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 7574
    :goto_0
    return v0

    .line 7572
    .end local v2    # "that":Landroid/app/AppOpsManager$NotedOp;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 7533
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 7541
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()I
    .locals 1

    .line 7521
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 7529
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldCollectAsyncNotedOp()Z
    .locals 1

    .line 7545
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    return v0
.end method

.method public getShouldCollectMessage()Z
    .locals 1

    .line 7549
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 7525
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    return v0
.end method

.method public getVirtualDeviceId()I
    .locals 1

    .line 7537
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    return v0
.end method

.method public hashCode()I
    .locals 9

    .line 7586
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7587
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 7586
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 7592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotedOp{mOp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVirtualDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldCollectAsyncNotedOp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldCollectMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7559
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7560
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7561
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7562
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7563
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7564
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7565
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7566
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7567
    return-void
.end method
