.class public Landroid/companion/datatransfer/PermissionSyncRequest;
.super Landroid/companion/datatransfer/SystemDataTransferRequest;
.source "PermissionSyncRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/datatransfer/PermissionSyncRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Landroid/companion/datatransfer/PermissionSyncRequest$1;

    invoke-direct {v0}, Landroid/companion/datatransfer/PermissionSyncRequest$1;-><init>()V

    sput-object v0, Landroid/companion/datatransfer/PermissionSyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "associationId"    # I

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/companion/datatransfer/SystemDataTransferRequest;-><init>(II)V

    .line 33
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0, p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;-><init>(Landroid/os/Parcel;)V

    .line 48
    return-void
.end method


# virtual methods
.method public copyWithNewId(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .locals 2
    .param p1, "associationId"    # I

    .line 53
    new-instance v0, Landroid/companion/datatransfer/PermissionSyncRequest;

    invoke-direct {v0, p1}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 54
    .local v0, "newRequest":Landroid/companion/datatransfer/PermissionSyncRequest;
    iget v1, p0, Landroid/companion/datatransfer/PermissionSyncRequest;->mUserId:I

    iput v1, v0, Landroid/companion/datatransfer/PermissionSyncRequest;->mUserId:I

    .line 55
    iget-boolean v1, p0, Landroid/companion/datatransfer/PermissionSyncRequest;->mUserConsented:Z

    iput-boolean v1, v0, Landroid/companion/datatransfer/PermissionSyncRequest;->mUserConsented:Z

    .line 56
    return-object v0
.end method

.method public bridge synthetic copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Landroid/companion/datatransfer/PermissionSyncRequest;->copyWithNewId(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemDataTransferRequest(associationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/datatransfer/PermissionSyncRequest;->mAssociationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/datatransfer/PermissionSyncRequest;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUserConsented="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/datatransfer/PermissionSyncRequest;->mUserConsented:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
