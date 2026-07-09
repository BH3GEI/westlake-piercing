.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;
    }
.end annotation


# static fields
.field public static final greylist-max-o PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final greylist-max-o PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final greylist-max-o PACKAGE_UNCHANGED:I = 0x0

.field public static final greylist-max-o PACKAGE_UPDATING:I = 0x1

.field static final blacklist TAG:Ljava/lang/String; = "PackageMonitor"


# instance fields
.field greylist-max-o mAppearingPackages:[Ljava/lang/String;

.field greylist-max-o mChangeType:I

.field greylist-max-o mChangeUserId:I

.field greylist-max-o mDisappearingPackages:[Ljava/lang/String;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mModifiedComponents:[Ljava/lang/String;

.field greylist-max-o mModifiedPackages:[Ljava/lang/String;

.field blacklist mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

.field greylist-max-o mRegisteredContext:Landroid/content/Context;

.field greylist-max-o mRegisteredHandler:Landroid/os/Handler;

.field greylist-max-o mSomePackagesChanged:Z

.field final blacklist mSupportsPackageRestartQuery:Z

.field greylist-max-o mTempArray:[Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$bSKEInwdT6Kd7GAyzMZPsXTTqeQ(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;->lambda$postHandlePackageEvent$0(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostHandlePackageEvent(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;->postHandlePackageEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->packageRestartQueryDisabledByDefault()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "supportsPackageRestartQuery"    # Z

    .line 80
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    .line 81
    iput-boolean p1, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    .line 82
    return-void
.end method

.method private blacklist getPackageFilter()Landroid/content/IntentFilter;
    .locals 3

    .line 85
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    .line 87
    .local v0, "isCore":Z
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 94
    :cond_0
    return-object v1
.end method

.method private synthetic blacklist lambda$postHandlePackageEvent$0(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->doHandlePackageEvent(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist postHandlePackageEvent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 432
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 435
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o anyPackagesAppearing()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o anyPackagesDisappearing()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o didSomePackagesChange()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method public final blacklist doHandlePackageEvent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .line 443
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 445
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    if-ne v0, v1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent broadcast does not contain user handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 452
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 453
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "android.intent.extra.REPLACING"

    const-string v6, "android.intent.extra.UID"

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 462
    .local v6, "uid":I
    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 463
    if-eqz v3, :cond_2

    .line 464
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 465
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v8, v2

    .line 466
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 468
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 469
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 470
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinishedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 471
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 474
    :cond_1
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 475
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 476
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAddedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 478
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 479
    iget v2, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 481
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_2
    move-object v3, p0

    move-object v8, p1

    goto/16 :goto_7

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 483
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 484
    .restart local v6    # "uid":I
    if-eqz v3, :cond_6

    .line 485
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 486
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v8, v2

    .line 487
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 488
    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 489
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    .line 490
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v3, v6, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStartedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 491
    const-string v4, "android.intent.extra.ARCHIVAL"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 495
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 499
    :cond_4
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 503
    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 504
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 505
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v3, v6, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 506
    const-string v4, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 507
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    .line 508
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsersWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 511
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 512
    iget v2, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 514
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_6
    move-object v3, p0

    move-object v8, p1

    goto/16 :goto_7

    :cond_7
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 515
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 516
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 517
    .local v5, "uid":I
    const-string v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    .line 519
    if-eqz v3, :cond_9

    .line 520
    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 521
    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v6, v2

    .line 522
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 523
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 524
    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 526
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 527
    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 530
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "uid":I
    :cond_9
    move-object v3, p0

    move-object v8, p1

    goto/16 :goto_7

    :cond_a
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .restart local v3    # "pkg":Ljava/lang/String;
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 533
    .local v2, "uid":I
    if-eqz v3, :cond_b

    .line 534
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDataCleared(Ljava/lang/String;I)V

    .line 536
    .end local v2    # "uid":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_b
    move-object v3, p0

    move-object v8, p1

    goto/16 :goto_7

    :cond_c
    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_e

    .line 537
    const-string v3, "android.intent.extra.PACKAGES"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 538
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 539
    iget-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 541
    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 539
    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z

    move-result p1

    .line 542
    move-object v3, v7

    .local p1, "canRestart":Z
    if-eqz p1, :cond_d

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    .line 543
    .end local p1    # "canRestart":Z
    :cond_d
    goto/16 :goto_7

    .end local v8    # "intent":Landroid/content/Intent;
    .local p1, "intent":Landroid/content/Intent;
    :cond_e
    move-object v3, p0

    move-object v8, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string p1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 544
    invoke-virtual {p0, v8}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 545
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 546
    iget-object v4, v3, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 547
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 546
    const/4 v6, 0x1

    move-object v2, v3

    move-object v3, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z

    move-object v3, v2

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto/16 :goto_7

    .line 548
    :cond_f
    const-string p1, "android.intent.action.UID_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 549
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_7

    .line 550
    :cond_10
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v9, "android.intent.extra.changed_package_list"

    if-eqz p1, :cond_13

    .line 551
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 552
    .local p1, "pkgList":[Ljava/lang/String;
    iput-object p1, v3, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 553
    invoke-virtual {v8, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 554
    move v4, v7

    goto :goto_2

    :cond_11
    nop

    :goto_2
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 555
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 556
    if-eqz p1, :cond_12

    .line 557
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 558
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_12

    .line 559
    aget-object v4, p1, v2

    iget v5, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 562
    .end local v2    # "i":I
    .end local p1    # "pkgList":[Ljava/lang/String;
    :cond_12
    goto/16 :goto_7

    :cond_13
    const-string p1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 563
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 564
    .restart local p1    # "pkgList":[Ljava/lang/String;
    iput-object p1, v3, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 565
    invoke-virtual {v8, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 566
    move v4, v7

    goto :goto_4

    :cond_14
    nop

    :goto_4
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 567
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 568
    if-eqz p1, :cond_15

    .line 569
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 570
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v4, p1

    if-ge v2, v4, :cond_15

    .line 571
    aget-object v4, p1, v2

    iget v5, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 570
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 574
    .end local v2    # "i":I
    .end local p1    # "pkgList":[Ljava/lang/String;
    :cond_15
    goto :goto_7

    :cond_16
    const-string p1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 575
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 576
    .restart local p1    # "pkgList":[Ljava/lang/String;
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    .line 578
    .end local p1    # "pkgList":[Ljava/lang/String;
    goto :goto_7

    :cond_17
    const-string p1, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 579
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 580
    .restart local p1    # "pkgList":[Ljava/lang/String;
    iput-boolean v7, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    .end local p1    # "pkgList":[Ljava/lang/String;
    goto :goto_6

    .line 582
    :cond_18
    const-string p1, "android.intent.action.PACKAGE_UNSTOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 583
    invoke-virtual {p0, v8}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 584
    .local p1, "pkgName":Ljava/lang/String;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 585
    iput v4, v3, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 586
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 587
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 586
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageUnstopped(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_7

    .line 582
    .end local p1    # "pkgName":Ljava/lang/String;
    :cond_19
    :goto_6
    nop

    .line 590
    :goto_7
    iget-boolean p1, v3, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz p1, :cond_1a

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    .line 594
    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    .line 595
    iput v1, v3, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 596
    return-void
.end method

.method public greylist-max-o getChangingUserId()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    return v0
.end method

.method greylist-max-o getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 420
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 421
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 422
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method public greylist-max-o getRegisteredHandler()Landroid/os/Handler;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public greylist-max-o isComponentModified(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 392
    iget-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    return v2

    .line 391
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 396
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 389
    :cond_3
    :goto_1
    return v0
.end method

.method public greylist-max-o isPackageAppearing(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    .line 342
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 348
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPackageDisappearing(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    .line 358
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 364
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPackageModified(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 379
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    return v1

    .line 378
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 384
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isReplacing()Z
    .locals 2

    .line 372
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o onBeginPackageChanges()V
    .locals 0

    .line 160
    return-void
.end method

.method public greylist-max-o onFinishPackageChanges()V
    .locals 0

    .line 403
    return-void
.end method

.method public greylist-max-o onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 262
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 166
    return-void
.end method

.method public blacklist onPackageAddedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 173
    return-void
.end method

.method public greylist-max-o onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 305
    return-void
.end method

.method public blacklist onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 312
    return-void
.end method

.method public greylist onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 243
    array-length v1, p3

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 244
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const/4 v0, 0x1

    return v0

    .line 243
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    :cond_1
    return v0
.end method

.method public blacklist onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 258
    return-void
.end method

.method public greylist-max-o onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 406
    return-void
.end method

.method public greylist-max-o onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 293
    return-void
.end method

.method public blacklist onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 299
    return-void
.end method

.method public greylist-max-o onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 318
    return-void
.end method

.method public blacklist onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 325
    return-void
.end method

.method public greylist onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 180
    return-void
.end method

.method public greylist-max-o onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 194
    return-void
.end method

.method public blacklist onPackageRemovedAllUsersWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 201
    return-void
.end method

.method public blacklist onPackageRemovedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 187
    return-void
.end method

.method public blacklist onPackageStateChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 413
    return-void
.end method

.method public blacklist onPackageUnstopped(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 334
    return-void
.end method

.method public greylist-max-o onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 214
    return-void
.end method

.method public blacklist onPackageUpdateFinishedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 221
    return-void
.end method

.method public greylist-max-o onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 204
    return-void
.end method

.method public blacklist onPackageUpdateStartedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 211
    return-void
.end method

.method public greylist-max-o onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 273
    return-void
.end method

.method public greylist-max-o onPackagesSuspended([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 279
    return-void
.end method

.method public greylist-max-o onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 276
    return-void
.end method

.method public greylist-max-o onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .line 282
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 427
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->doHandlePackageEvent(Landroid/content/Intent;)V

    .line 428
    return-void
.end method

.method public greylist-max-o onSomePackagesChanged()V
    .locals 0

    .line 400
    return-void
.end method

.method public greylist-max-o onUidRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 270
    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "externalStorage"    # Z

    .line 105
    nop

    .line 106
    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    :goto_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 107
    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "externalStorage"    # Z

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 100
    return-void
.end method

.method public blacklist register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 113
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 116
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 117
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    .line 118
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    if-eqz v0, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;->getPackageFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 120
    .local v4, "filter":Landroid/content/IntentFilter;
    if-eqz p2, :cond_0

    .line 121
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "user":Landroid/os/UserHandle;
    .local v1, "context":Landroid/content/Context;
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 123
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "user":Landroid/os/UserHandle;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :cond_0
    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "user":Landroid/os/UserHandle;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "user":Landroid/os/UserHandle;
    const/4 p1, 0x0

    iget-object p2, v2, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v4, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 118
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "user":Landroid/os/UserHandle;
    :cond_1
    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    .line 126
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "user":Landroid/os/UserHandle;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "user":Landroid/os/UserHandle;
    :goto_0
    iget-object p1, v2, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    if-nez p1, :cond_3

    .line 127
    iget-object p1, v2, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 128
    .local p1, "pm":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_3

    .line 129
    new-instance p2, Landroid/os/HandlerExecutor;

    iget-object v0, v2, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-direct {p2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p2, v2, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 130
    new-instance p2, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-direct {p2, p0}, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;-><init>(Lcom/android/internal/content/PackageMonitor;)V

    iput-object p2, v2, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    .line 131
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    goto :goto_1

    :cond_2
    iget-object p2, v2, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    .line 132
    .local p2, "userId":I
    :goto_1
    iget-object v0, v2, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V

    .line 135
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "userId":I
    :cond_3
    return-void

    .line 114
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "user":Landroid/os/UserHandle;
    .local p1, "context":Landroid/content/Context;
    .local p2, "user":Landroid/os/UserHandle;
    :cond_4
    move-object v1, p1

    move-object v3, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "user":Landroid/os/UserHandle;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "user":Landroid/os/UserHandle;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist unregister()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 146
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 151
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    .line 154
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    .line 155
    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 156
    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 157
    return-void

    .line 144
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
