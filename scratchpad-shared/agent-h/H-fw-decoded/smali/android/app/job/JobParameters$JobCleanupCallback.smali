.class public Landroid/app/job/JobParameters$JobCleanupCallback;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JobCleanupCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/job/IJobCallback;

.field private mIsCleanerEnabled:Z

.field private final mJobId:I


# direct methods
.method public constructor <init>(Landroid/app/job/IJobCallback;I)V
    .locals 1
    .param p1, "callback"    # Landroid/app/job/IJobCallback;
    .param p2, "jobId"    # I

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p1, p0, Landroid/app/job/JobParameters$JobCleanupCallback;->mCallback:Landroid/app/job/IJobCallback;

    .line 795
    iput p2, p0, Landroid/app/job/JobParameters$JobCleanupCallback;->mJobId:I

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/job/JobParameters$JobCleanupCallback;->mIsCleanerEnabled:Z

    .line 797
    return-void
.end method


# virtual methods
.method public disableCleaner()V
    .locals 1

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/job/JobParameters$JobCleanupCallback;->mIsCleanerEnabled:Z

    .line 824
    return-void
.end method

.method public enableCleaner()V
    .locals 1

    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/job/JobParameters$JobCleanupCallback;->mIsCleanerEnabled:Z

    .line 815
    return-void
.end method

.method public isCleanerEnabled()Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Landroid/app/job/JobParameters$JobCleanupCallback;->mIsCleanerEnabled:Z

    return v0
.end method

.method public run()V
    .locals 3

    .line 829
    invoke-virtual {p0}, Landroid/app/job/JobParameters$JobCleanupCallback;->isCleanerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    return-void

    .line 833
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/job/JobParameters$JobCleanupCallback;->mCallback:Landroid/app/job/IJobCallback;

    iget v1, p0, Landroid/app/job/JobParameters$JobCleanupCallback;->mJobId:I

    invoke-interface {v0, v1}, Landroid/app/job/IJobCallback;->handleAbandonedJob(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "JobParameters"

    const-string v2, "Could not destroy running job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
