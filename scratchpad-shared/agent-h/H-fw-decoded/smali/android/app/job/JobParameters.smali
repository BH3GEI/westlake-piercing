.class public Landroid/app/job/JobParameters;
.super Ljava/lang/Object;
.source "JobParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobParameters$JobCleanupCallback;,
        Landroid/app/job/JobParameters$StopReason;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_STOP_REASON_ANR:I = 0xc

.field public static final INTERNAL_STOP_REASON_CANCELED:I = 0x0

.field public static final INTERNAL_STOP_REASON_CONSTRAINTS_NOT_SATISFIED:I = 0x1

.field public static final INTERNAL_STOP_REASON_DATA_CLEARED:I = 0x8

.field public static final INTERNAL_STOP_REASON_DEVICE_IDLE:I = 0x4

.field public static final INTERNAL_STOP_REASON_DEVICE_THERMAL:I = 0x5

.field public static final INTERNAL_STOP_REASON_PREEMPT:I = 0x2

.field public static final INTERNAL_STOP_REASON_RESTRICTED_BUCKET:I = 0x6

.field public static final INTERNAL_STOP_REASON_RTC_UPDATED:I = 0x9

.field public static final INTERNAL_STOP_REASON_SUCCESSFUL_FINISH:I = 0xa

.field public static final INTERNAL_STOP_REASON_TIMEOUT:I = 0x3

.field public static final INTERNAL_STOP_REASON_TIMEOUT_ABANDONED:I = 0xd

.field public static final INTERNAL_STOP_REASON_UNINSTALL:I = 0x7

.field public static final INTERNAL_STOP_REASON_UNKNOWN:I = -0x1

.field public static final INTERNAL_STOP_REASON_USER_UI_STOP:I = 0xb

.field public static final JOB_STOP_REASON_CODES:[I

.field public static final OVERRIDE_HANDLE_ABANDONED_JOBS:J = 0x163457acL

.field public static final STOP_REASON_APP_STANDBY:I = 0xc

.field public static final STOP_REASON_BACKGROUND_RESTRICTION:I = 0xb

.field public static final STOP_REASON_CANCELLED_BY_APP:I = 0x1

.field public static final STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW:I = 0x5

.field public static final STOP_REASON_CONSTRAINT_CHARGING:I = 0x6

.field public static final STOP_REASON_CONSTRAINT_CONNECTIVITY:I = 0x7

.field public static final STOP_REASON_CONSTRAINT_DEVICE_IDLE:I = 0x8

.field public static final STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW:I = 0x9

.field public static final STOP_REASON_DEVICE_STATE:I = 0x4

.field public static final STOP_REASON_ESTIMATED_APP_LAUNCH_TIME_CHANGED:I = 0xf

.field public static final STOP_REASON_PREEMPT:I = 0x2

.field public static final STOP_REASON_QUOTA:I = 0xa

.field public static final STOP_REASON_SYSTEM_PROCESSING:I = 0xe

.field public static final STOP_REASON_TIMEOUT:I = 0x3

.field public static final STOP_REASON_TIMEOUT_ABANDONED:I = 0x10

.field public static final STOP_REASON_UNDEFINED:I = 0x0

.field public static final STOP_REASON_USER:I = 0xd

.field private static final TAG:Ljava/lang/String; = "JobParameters"


# instance fields
.field private final callback:Landroid/os/IBinder;

.field private final clipData:Landroid/content/ClipData;

.field private final clipGrantFlags:I

.field private debugStopReason:Ljava/lang/String;

.field private final extras:Landroid/os/PersistableBundle;

.field private final jobId:I

.field private mCleanable:Ljava/lang/ref/Cleaner$Cleanable;

.field private mInternalStopReason:I

.field private final mIsExpedited:Z

.field private final mIsUserInitiated:Z

.field private mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

.field private final mJobNamespace:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mStopReason:I

.field private final mTriggeredContentAuthorities:[Ljava/lang/String;

.field private final mTriggeredContentUris:[Landroid/net/Uri;

.field private final overrideDeadlineExpired:Z

.field private final transientExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/job/JobParameters;->JOB_STOP_REASON_CODES:[I

    .line 840
    new-instance v0, Landroid/app/job/JobParameters$1;

    invoke-direct {v0}, Landroid/app/job/JobParameters$1;-><init>()V

    sput-object v0, Landroid/app/job/JobParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "jobId"    # I
    .param p4, "extras"    # Landroid/os/PersistableBundle;
    .param p5, "transientExtras"    # Landroid/os/Bundle;
    .param p6, "clipData"    # Landroid/content/ClipData;
    .param p7, "clipGrantFlags"    # I
    .param p8, "overrideDeadlineExpired"    # Z
    .param p9, "isExpedited"    # Z
    .param p10, "isUserInitiated"    # Z
    .param p11, "triggeredContentUris"    # [Landroid/net/Uri;
    .param p12, "triggeredContentAuthorities"    # [Ljava/lang/String;
    .param p13, "network"    # Landroid/net/Network;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    .line 373
    iput p3, p0, Landroid/app/job/JobParameters;->jobId:I

    .line 374
    iput-object p4, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    .line 375
    iput-object p5, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    .line 376
    iput-object p6, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    .line 377
    iput p7, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    .line 378
    iput-object p1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    .line 379
    iput-boolean p8, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    .line 380
    iput-boolean p9, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    .line 381
    iput-boolean p10, p0, Landroid/app/job/JobParameters;->mIsUserInitiated:Z

    .line 382
    iput-object p11, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    .line 383
    iput-object p12, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    .line 384
    iput-object p13, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    .line 385
    iput-object p2, p0, Landroid/app/job/JobParameters;->mJobNamespace:Ljava/lang/String;

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    .line 387
    iput-object v0, p0, Landroid/app/job/JobParameters;->mCleanable:Ljava/lang/ref/Cleaner$Cleanable;

    .line 388
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    .line 350
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobParameters;->jobId:I

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->mJobNamespace:Ljava/lang/String;

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    .line 644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 645
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    goto :goto_0

    .line 648
    :cond_0
    iput-object v2, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    .line 649
    iput v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    .line 651
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v0, v3

    :cond_1
    iput-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/job/JobParameters;->mIsUserInitiated:Z

    .line 655
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    goto :goto_1

    .line 660
    :cond_2
    iput-object v2, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    .line 662
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    .line 665
    iput-object v2, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    .line 666
    iput-object v2, p0, Landroid/app/job/JobParameters;->mCleanable:Ljava/lang/ref/Cleaner$Cleanable;

    .line 667
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobParameters-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/job/JobParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getInternalReasonCodeDescription(I)Ljava/lang/String;
    .locals 2
    .param p0, "reasonCode"    # I

    .line 170
    packed-switch p0, :pswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :pswitch_0
    const-string/jumbo v0, "timeout_abandoned"

    return-object v0

    .line 183
    :pswitch_1
    const-string v0, "anr"

    return-object v0

    .line 182
    :pswitch_2
    const-string/jumbo v0, "user_ui_stop"

    return-object v0

    .line 181
    :pswitch_3
    const-string/jumbo v0, "successful_finish"

    return-object v0

    .line 180
    :pswitch_4
    const-string/jumbo v0, "rtc_updated"

    return-object v0

    .line 179
    :pswitch_5
    const-string v0, "data_cleared"

    return-object v0

    .line 178
    :pswitch_6
    const-string/jumbo v0, "uninstall"

    return-object v0

    .line 177
    :pswitch_7
    const-string/jumbo v0, "restricted_bucket"

    return-object v0

    .line 176
    :pswitch_8
    const-string/jumbo v0, "thermal"

    return-object v0

    .line 175
    :pswitch_9
    const-string v0, "device_idle"

    return-object v0

    .line 174
    :pswitch_a
    const-string/jumbo v0, "timeout"

    return-object v0

    .line 173
    :pswitch_b
    const-string/jumbo v0, "preempt"

    return-object v0

    .line 172
    :pswitch_c
    const-string v0, "constraints"

    return-object v0

    .line 171
    :pswitch_d
    const-string v0, "canceled"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getJobStopReasonCodes()[I
    .locals 1

    .line 192
    sget-object v0, Landroid/app/job/JobParameters;->JOB_STOP_REASON_CODES:[I

    return-object v0
.end method


# virtual methods
.method public completeWork(Landroid/app/job/JobWorkItem;)V
    .locals 3
    .param p1, "work"    # Landroid/app/job/JobWorkItem;

    .line 625
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/job/IJobCallback;->completeWork(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    nop

    .line 631
    return-void

    .line 626
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given work is not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/job/JobParameters;
    .end local p1    # "work":Landroid/app/job/JobWorkItem;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .restart local p0    # "this":Landroid/app/job/JobParameters;
    .restart local p1    # "work":Landroid/app/job/JobWorkItem;
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dequeueWork()Landroid/app/job/JobWorkItem;
    .locals 2

    .line 601
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/job/IJobCallback;->dequeueWork(I)Landroid/app/job/JobWorkItem;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public disableCleaner()V
    .locals 2

    .line 716
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->handleAbandonedJobs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    const-wide/32 v0, 0x163457ac

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    iget-object v0, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    invoke-virtual {v0}, Landroid/app/job/JobParameters$JobCleanupCallback;->disableCleaner()V

    .line 722
    iget-object v0, p0, Landroid/app/job/JobParameters;->mCleanable:Ljava/lang/ref/Cleaner$Cleanable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Landroid/app/job/JobParameters;->mCleanable:Ljava/lang/ref/Cleaner$Cleanable;

    invoke-interface {v0}, Ljava/lang/ref/Cleaner$Cleanable;->clean()V

    .line 724
    iput-object v1, p0, Landroid/app/job/JobParameters;->mCleanable:Ljava/lang/ref/Cleaner$Cleanable;

    .line 726
    :cond_1
    iput-object v1, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    .line 728
    :cond_2
    return-void

    .line 718
    :cond_3
    :goto_0
    return-void
.end method

.method public enableCleaner()V
    .locals 3

    .line 694
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/job/Flags;->handleAbandonedJobs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 695
    const-wide/32 v0, 0x163457ac

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 702
    return-void

    .line 704
    :cond_1
    iget-object v0, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    if-nez v0, :cond_2

    .line 705
    new-instance v0, Landroid/app/job/JobParameters$JobCleanupCallback;

    iget-object v1, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/app/job/IJobCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;

    move-result-object v1

    iget v2, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobParameters$JobCleanupCallback;-><init>(Landroid/app/job/IJobCallback;I)V

    invoke-virtual {p0, v0}, Landroid/app/job/JobParameters;->initCleaner(Landroid/app/job/JobParameters$JobCleanupCallback;)V

    .line 707
    :cond_2
    iget-object v0, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    invoke-virtual {v0}, Landroid/app/job/JobParameters$JobCleanupCallback;->enableCleaner()V

    .line 708
    return-void

    .line 696
    :cond_3
    :goto_0
    return-void
.end method

.method public getCallback()Landroid/app/job/IJobCallback;
    .locals 1

    .line 636
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/job/IJobCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobCallback;

    move-result-object v0

    return-object v0
.end method

.method public getCleanable()Ljava/lang/ref/Cleaner$Cleanable;
    .locals 1

    .line 734
    iget-object v0, p0, Landroid/app/job/JobParameters;->mCleanable:Ljava/lang/ref/Cleaner$Cleanable;

    return-object v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .line 463
    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipGrantFlags()I
    .locals 1

    .line 472
    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    return v0
.end method

.method public getDebugStopReason()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getInternalStopReasonCode()I
    .locals 1

    .line 427
    iget v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    return v0
.end method

.method public getJobCleanupCallback()Landroid/app/job/JobParameters$JobCleanupCallback;
    .locals 1

    .line 741
    iget-object v0, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .line 394
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    return v0
.end method

.method public getJobNamespace()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Landroid/app/job/JobParameters;->mJobNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    .line 563
    iget-object v0, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public getStopReason()I
    .locals 1

    .line 422
    iget v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    return v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .locals 1

    .line 454
    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTriggeredContentAuthorities()[Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    return-object v0
.end method

.method public getTriggeredContentUris()[Landroid/net/Uri;
    .locals 1

    .line 524
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public initCleaner(Landroid/app/job/JobParameters$JobCleanupCallback;)V
    .locals 2
    .param p1, "jobCleanupCallback"    # Landroid/app/job/JobParameters$JobCleanupCallback;

    .line 684
    iput-object p1, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    .line 685
    invoke-static {}, Landroid/system/SystemCleaner;->cleaner()Ljava/lang/ref/Cleaner;

    move-result-object v0

    iget-object v1, p0, Landroid/app/job/JobParameters;->mJobCleanupCallback:Landroid/app/job/JobParameters$JobCleanupCallback;

    invoke-virtual {v0, p0, v1}, Ljava/lang/ref/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobParameters;->mCleanable:Ljava/lang/ref/Cleaner$Cleanable;

    .line 686
    return-void
.end method

.method public isExpeditedJob()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    return v0
.end method

.method public isOverrideDeadlineExpired()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    return v0
.end method

.method public isUserInitiatedJob()Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsUserInitiated:Z

    return v0
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 671
    iput-object p1, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    .line 672
    return-void
.end method

.method public setStopReason(IILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "internalStopReason"    # I
    .param p3, "debugStopReason"    # Ljava/lang/String;

    .line 677
    iput p1, p0, Landroid/app/job/JobParameters;->mStopReason:I

    .line 678
    iput p2, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    .line 679
    iput-object p3, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    .line 680
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 751
    iget v0, p0, Landroid/app/job/JobParameters;->jobId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget-object v0, p0, Landroid/app/job/JobParameters;->mJobNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Landroid/app/job/JobParameters;->extras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 754
    iget-object v0, p0, Landroid/app/job/JobParameters;->transientExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 755
    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    iget-object v0, p0, Landroid/app/job/JobParameters;->clipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 758
    iget v0, p0, Landroid/app/job/JobParameters;->clipGrantFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    :goto_0
    iget-object v0, p0, Landroid/app/job/JobParameters;->callback:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 763
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->overrideDeadlineExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsExpedited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 765
    iget-boolean v0, p0, Landroid/app/job/JobParameters;->mIsUserInitiated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 766
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentUris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 767
    iget-object v0, p0, Landroid/app/job/JobParameters;->mTriggeredContentAuthorities:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_1

    .line 769
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget-object v0, p0, Landroid/app/job/JobParameters;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1, p2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 772
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    :goto_1
    iget v0, p0, Landroid/app/job/JobParameters;->mStopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget v0, p0, Landroid/app/job/JobParameters;->mInternalStopReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    iget-object v0, p0, Landroid/app/job/JobParameters;->debugStopReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 777
    return-void
.end method
