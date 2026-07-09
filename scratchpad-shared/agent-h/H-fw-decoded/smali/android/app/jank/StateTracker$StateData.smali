.class public Landroid/app/jank/StateTracker$StateData;
.super Ljava/lang/Object;
.source "StateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/jank/StateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateData"
.end annotation


# instance fields
.field public mProcessed:Z

.field public mStateDataKey:Ljava/lang/String;

.field public mVsyncIdEnd:J

.field public mVsyncIdStart:J

.field public mWidgetCategory:Ljava/lang/String;

.field public mWidgetId:Ljava/lang/String;

.field public mWidgetState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
