.class public final Landroid/app/ZenBypassingApp;
.super Ljava/lang/Object;
.source "ZenBypassingApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ZenBypassingApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllChannelsBypass:Z

.field private mPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/app/ZenBypassingApp$1;

    invoke-direct {v0}, Landroid/app/ZenBypassingApp$1;-><init>()V

    sput-object v0, Landroid/app/ZenBypassingApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "allChannelsBypass"    # Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public doAllChannelsBypass()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 79
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Landroid/app/ZenBypassingApp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 81
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/ZenBypassingApp;

    .line 82
    .local v1, "that":Landroid/app/ZenBypassingApp;
    iget-boolean v3, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    iget-boolean v4, v1, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 88
    iget-object v0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZenBypassingApp{mPkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllChannelsBypass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 61
    iget-object v0, p0, Landroid/app/ZenBypassingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Landroid/app/ZenBypassingApp;->mAllChannelsBypass:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 63
    return-void
.end method
