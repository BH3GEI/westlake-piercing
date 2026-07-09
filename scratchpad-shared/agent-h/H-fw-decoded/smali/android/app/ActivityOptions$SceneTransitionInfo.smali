.class public Landroid/app/ActivityOptions$SceneTransitionInfo;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SceneTransitionInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$SceneTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExitCoordinatorIndex:I

.field private mIsReturning:Z

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;

.field private mResultReceiver:Landroid/os/ResultReceiver;

.field private mSharedElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2871
    new-instance v0, Landroid/app/ActivityOptions$SceneTransitionInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$SceneTransitionInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$SceneTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2860
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2863
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    .line 2864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    .line 2865
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    .line 2866
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2867
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 2868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    .line 2869
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2885
    const/4 v0, 0x0

    return v0
.end method

.method public getExitCoordinatorKey()I
    .locals 1

    .line 2946
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 2911
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .line 2920
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .line 2938
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public getSharedElementNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2929
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method isCrossTask()Z
    .locals 1

    .line 2950
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReturning()Z
    .locals 1

    .line 2903
    iget-boolean v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    return v0
.end method

.method public setExitCoordinatorKey(I)V
    .locals 0
    .param p1, "exitCoordinatorKey"    # I

    .line 2942
    iput p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    .line 2943
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .line 2907
    iput p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    .line 2908
    return-void
.end method

.method public setResultData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultData"    # Landroid/content/Intent;

    .line 2915
    iput-object p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    .line 2916
    return-void
.end method

.method public setResultReceiver(Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2933
    iput-object p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 2934
    return-void
.end method

.method public setReturning(Z)V
    .locals 0
    .param p1, "isReturning"    # Z

    .line 2899
    iput-boolean p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    .line 2900
    return-void
.end method

.method public setSharedElementNames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2924
    .local p1, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    .line 2925
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneTransitionInfo, mIsReturning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSharedElementNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransitionReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExitCoordinatorIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2890
    iget-boolean v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mIsReturning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2891
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2892
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultData:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2893
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2894
    iget-object v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2895
    iget v0, p0, Landroid/app/ActivityOptions$SceneTransitionInfo;->mExitCoordinatorIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    return-void
.end method
