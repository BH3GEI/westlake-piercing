.class public abstract Landroid/app/backup/BackupHelperWithLogger;
.super Ljava/lang/Object;
.source "BackupHelperWithLogger.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# instance fields
.field private mIsLoggerSet:Z

.field private mLogger:Landroid/app/backup/BackupRestoreEventLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/backup/BackupHelperWithLogger;->mIsLoggerSet:Z

    return-void
.end method


# virtual methods
.method public getLogger()Landroid/app/backup/BackupRestoreEventLogger;
    .locals 1

    .line 42
    iget-object v0, p0, Landroid/app/backup/BackupHelperWithLogger;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    return-object v0
.end method

.method public isLoggerSet()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Landroid/app/backup/BackupHelperWithLogger;->mIsLoggerSet:Z

    return v0
.end method

.method public abstract performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
.end method

.method public setLogger(Landroid/app/backup/BackupRestoreEventLogger;)V
    .locals 1
    .param p1, "logger"    # Landroid/app/backup/BackupRestoreEventLogger;

    .line 49
    iput-object p1, p0, Landroid/app/backup/BackupHelperWithLogger;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/backup/BackupHelperWithLogger;->mIsLoggerSet:Z

    .line 51
    return-void
.end method

.method public abstract writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
.end method
