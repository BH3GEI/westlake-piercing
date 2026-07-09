.class final Landroid/graphics/GraphicsStatsService$BufferInfo;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferInfo"
.end annotation


# instance fields
.field mEndTime:J

.field final mPackageName:Ljava/lang/String;

.field mStartTime:J

.field final mUid:I

.field final mVersionCode:J


# direct methods
.method constructor <init>(Landroid/graphics/GraphicsStatsService;ILjava/lang/String;JJ)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J
    .param p6, "startTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput p2, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mUid:I

    .line 489
    iput-object p3, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    .line 490
    iput-wide p4, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    .line 491
    iput-wide p6, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    .line 492
    return-void
.end method
