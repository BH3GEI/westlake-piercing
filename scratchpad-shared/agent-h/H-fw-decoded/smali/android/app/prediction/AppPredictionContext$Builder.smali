.class public final Landroid/app/prediction/AppPredictionContext$Builder;
.super Ljava/lang/Object;
.source "AppPredictionContext.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppPredictionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private final mPackageName:Ljava/lang/String;

.field private mPredictedTargetCount:I

.field private mUiSurface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mPackageName:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public build()Landroid/app/prediction/AppPredictionContext;
    .locals 6

    .line 193
    new-instance v0, Landroid/app/prediction/AppPredictionContext;

    iget-object v1, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mUiSurface:Ljava/lang/String;

    iget v2, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mPredictedTargetCount:I

    iget-object v3, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/prediction/AppPredictionContext;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/prediction/AppPredictionContext-IA;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 184
    iput-object p1, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mExtras:Landroid/os/Bundle;

    .line 185
    return-object p0
.end method

.method public setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;
    .locals 0
    .param p1, "predictedTargetCount"    # I

    .line 166
    iput p1, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mPredictedTargetCount:I

    .line 167
    return-object p0
.end method

.method public setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;
    .locals 0
    .param p1, "uiSurface"    # Ljava/lang/String;

    .line 175
    iput-object p1, p0, Landroid/app/prediction/AppPredictionContext$Builder;->mUiSurface:Ljava/lang/String;

    .line 176
    return-object p0
.end method
