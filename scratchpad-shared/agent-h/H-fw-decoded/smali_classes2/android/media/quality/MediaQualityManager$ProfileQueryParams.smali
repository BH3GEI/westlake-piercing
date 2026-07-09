.class public final Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/MediaQualityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileQueryParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT:Landroid/media/quality/MediaQualityManager$ProfileQueryParams;


# instance fields
.field private final blacklist mParametersIncluded:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .locals 1

    sget-object v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->DEFAULT:Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1228
    new-instance v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;

    invoke-direct {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$Builder;->build()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    move-result-object v0

    sput-object v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->DEFAULT:Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    .line 1240
    new-instance v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$1;

    invoke-direct {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams$1;-><init>()V

    sput-object v0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1231
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    .line 1232
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/MediaQualityManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 0
    .param p1, "parametersIncluded"    # Z

    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1236
    iput-boolean p1, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    .line 1237
    return-void
.end method

.method private blacklist toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1272
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1273
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "include_parameters"

    iget-boolean v2, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1274
    return-object v0
.end method


# virtual methods
.method public whitelist areParametersIncluded()Z
    .locals 1

    .line 1268
    iget-boolean v0, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 1255
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1260
    iget-boolean v0, p0, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->mParametersIncluded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1261
    return-void
.end method
