.class public final Landroid/graphics/Paint$RunInfo;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RunInfo"
.end annotation


# instance fields
.field private mClusterCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2706
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Paint$RunInfo;->mClusterCount:I

    return-void
.end method


# virtual methods
.method public getClusterCount()I
    .locals 1

    .line 2709
    iget v0, p0, Landroid/graphics/Paint$RunInfo;->mClusterCount:I

    return v0
.end method

.method public setClusterCount(I)V
    .locals 0
    .param p1, "clusterCount"    # I

    .line 2713
    iput p1, p0, Landroid/graphics/Paint$RunInfo;->mClusterCount:I

    .line 2714
    return-void
.end method
