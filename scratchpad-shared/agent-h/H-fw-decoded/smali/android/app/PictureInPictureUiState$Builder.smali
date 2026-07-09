.class public final Landroid/app/PictureInPictureUiState$Builder;
.super Ljava/lang/Object;
.source "PictureInPictureUiState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsStashed:Z

.field private mIsTransitioningToPip:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method


# virtual methods
.method public build()Landroid/app/PictureInPictureUiState;
    .locals 4

    .line 169
    new-instance v0, Landroid/app/PictureInPictureUiState;

    iget-boolean v1, p0, Landroid/app/PictureInPictureUiState$Builder;->mIsStashed:Z

    iget-boolean v2, p0, Landroid/app/PictureInPictureUiState$Builder;->mIsTransitioningToPip:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PictureInPictureUiState;-><init>(ZZLandroid/app/PictureInPictureUiState-IA;)V

    return-object v0
.end method

.method public setStashed(Z)Landroid/app/PictureInPictureUiState$Builder;
    .locals 0
    .param p1, "isStashed"    # Z

    .line 152
    iput-boolean p1, p0, Landroid/app/PictureInPictureUiState$Builder;->mIsStashed:Z

    .line 153
    return-object p0
.end method

.method public setTransitioningToPip(Z)Landroid/app/PictureInPictureUiState$Builder;
    .locals 0
    .param p1, "isEnteringPip"    # Z

    .line 161
    iput-boolean p1, p0, Landroid/app/PictureInPictureUiState$Builder;->mIsTransitioningToPip:Z

    .line 162
    return-object p0
.end method
