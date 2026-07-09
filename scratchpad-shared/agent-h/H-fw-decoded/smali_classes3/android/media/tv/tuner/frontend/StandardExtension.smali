.class public final Landroid/media/tv/tuner/frontend/StandardExtension;
.super Ljava/lang/Object;
.source "StandardExtension.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mDvbsStandardExtension:I

.field private final blacklist mDvbtStandardExtension:I


# direct methods
.method private constructor blacklist <init>(II)V
    .locals 0
    .param p1, "dvbsStandardExtension"    # I
    .param p2, "dvbtStandardExtension"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbsStandardExtension:I

    .line 41
    iput p2, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbtStandardExtension:I

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist getDvbsStandardExtension()I
    .locals 2

    .line 54
    iget v0, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbsStandardExtension:I

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbsStandardExtension:I

    return v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No DVB-S standard transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDvbtStandardExtension()I
    .locals 2

    .line 70
    iget v0, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbtStandardExtension:I

    if-eqz v0, :cond_0

    .line 73
    iget v0, p0, Landroid/media/tv/tuner/frontend/StandardExtension;->mDvbtStandardExtension:I

    return v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No DVB-T standard transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
