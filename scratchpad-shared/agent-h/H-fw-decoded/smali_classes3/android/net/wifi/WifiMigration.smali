.class public final Landroid/net/wifi/WifiMigration;
.super Ljava/lang/Object;
.source "WifiMigration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMigration$SettingsMigrationData;,
        Landroid/net/wifi/WifiMigration$KeystoreMigrationStatus;,
        Landroid/net/wifi/WifiMigration$UserStoreFileId;,
        Landroid/net/wifi/WifiMigration$SharedStoreFileId;
    }
.end annotation


# static fields
.field public static final blacklist KEYSTORE_MIGRATION_FAILURE_ENCOUNTERED_EXCEPTION:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist KEYSTORE_MIGRATION_SUCCESS_MIGRATION_COMPLETE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist KEYSTORE_MIGRATION_SUCCESS_MIGRATION_NOT_NEEDED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final blacklist LEGACY_WIFI_STORE_DIRECTORY_NAME:Ljava/lang/String; = "wifi"

.field public static final whitelist STORE_FILE_SHARED_GENERAL:I = 0x0

.field public static final whitelist STORE_FILE_SHARED_SOFTAP:I = 0x1

.field public static final whitelist STORE_FILE_USER_GENERAL:I = 0x2

.field public static final whitelist STORE_FILE_USER_NETWORK_SUGGESTIONS:I = 0x3

.field private static final blacklist STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WifiMigration"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Landroid/net/wifi/WifiMigration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiMigration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiMigration;->STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist convertAndRetrieveSharedConfigStoreFile(I)Ljava/io/InputStream;
    .locals 2
    .param p0, "storeFileId"    # I

    .line 225
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid shared store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/net/wifi/WifiMigration;->getSharedAtomicFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/io/FileNotFoundException;
    if-ne p0, v0, :cond_2

    .line 237
    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convert()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 239
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist convertAndRetrieveUserConfigStoreFile(ILandroid/os/UserHandle;)Ljava/io/InputStream;
    .locals 2
    .param p0, "storeFileId"    # I
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 307
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid user store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiMigration;->getUserAtomicFile(II)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getLegacyWifiSharedDirectory()Ljava/io/File;
    .locals 3

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getLegacyWifiUserDirectory(I)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getSharedAtomicFile(I)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "storeFileId"    # I

    .line 172
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 173
    invoke-static {}, Landroid/net/wifi/WifiMigration;->getLegacyWifiSharedDirectory()Ljava/io/File;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiMigration;->STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;

    .line 174
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 172
    return-object v0
.end method

.method private static blacklist getUserAtomicFile(II)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "storeFileId"    # I
    .param p1, "userId"    # I

    .line 182
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 183
    invoke-static {p1}, Landroid/net/wifi/WifiMigration;->getLegacyWifiUserDirectory(I)Ljava/io/File;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiMigration;->STORE_ID_TO_FILE_NAME:Landroid/util/SparseArray;

    .line 184
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 182
    return-object v0
.end method

.method static synthetic blacklist lambda$migrateLegacyKeystoreToWifiBlobstore$0(Ljava/util/function/IntConsumer;I)V
    .locals 0
    .param p0, "resultsCallback"    # Ljava/util/function/IntConsumer;
    .param p1, "status"    # I

    .line 629
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 630
    return-void
.end method

.method static synthetic blacklist lambda$migrateLegacyKeystoreToWifiBlobstore$1(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "resultsCallback"    # Ljava/util/function/IntConsumer;

    .line 627
    invoke-static {}, Landroid/net/wifi/WifiMigration;->migrateLegacyKeystoreToWifiBlobstoreInternal()I

    move-result v0

    .line 628
    .local v0, "status":I
    new-instance v1, Landroid/net/wifi/WifiMigration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Landroid/net/wifi/WifiMigration$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 631
    return-void
.end method

.method public static whitelist loadFromSettings(Landroid/content/Context;)Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 575
    nop

    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 575
    const-string/jumbo v1, "wifi_migration_completed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 578
    const/4 v0, 0x0

    return-object v0

    .line 580
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;-><init>()V

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_scan_always_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    .line 581
    :goto_0
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setScanAlwaysAvailable(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_p2p_pending_factory_reset"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 584
    :goto_1
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setP2pFactoryResetPending(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_p2p_device_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setP2pDeviceName(Ljava/lang/String;)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "soft_ap_timeout_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    .line 590
    :goto_2
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setSoftApTimeoutEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_wakeup_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v2

    .line 593
    :goto_3
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setWakeUpEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 597
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_scan_throttle_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v2

    .line 596
    :goto_4
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setScanThrottleEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_verbose_logging_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_6

    move v2, v3

    .line 599
    :cond_6
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->setVerboseLoggingEnabled(Z)Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;->build()Landroid/net/wifi/WifiMigration$SettingsMigrationData;

    move-result-object v0

    .line 603
    .local v0, "data":Landroid/net/wifi/WifiMigration$SettingsMigrationData;
    nop

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 603
    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    return-object v0
.end method

.method public static blacklist migrateLegacyKeystoreToWifiBlobstore(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "resultsCallback"    # Ljava/util/function/IntConsumer;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 624
    const-string v0, "executor cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 625
    const-string/jumbo v0, "resultsCallback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 626
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/WifiMigration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiMigration$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    return-void
.end method

.method public static blacklist migrateLegacyKeystoreToWifiBlobstoreInternal()I
    .locals 16

    .line 641
    const-string v0, ""

    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->supplicantCanAccessBlobstore()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "WifiMigration"

    if-nez v1, :cond_0

    .line 643
    const-string v0, "Avoiding migration since supplicant cannot access WifiBlobstore"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return v2

    .line 646
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 648
    .local v4, "identity":J
    const/4 v1, 0x2

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getLegacyKeystore()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v6

    .line 649
    .local v6, "legacyKeystore":Landroid/security/legacykeystore/ILegacyKeystore;
    const/16 v7, 0x3f2

    invoke-interface {v6, v0, v7}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 650
    .local v8, "legacyAliases":[Ljava/lang/String;
    if-eqz v8, :cond_4

    array-length v9, v8

    if-nez v9, :cond_1

    goto :goto_1

    .line 655
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiBlobStore;->getInstance()Landroid/net/wifi/WifiBlobStore;

    move-result-object v9

    .line 656
    .local v9, "wifiBlobStore":Landroid/net/wifi/WifiBlobStore;
    invoke-virtual {v9, v0}, Landroid/net/wifi/WifiBlobStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 657
    .local v0, "blobstoreAliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 658
    .local v10, "blobstoreAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 660
    array-length v11, v8

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v11, :cond_3

    aget-object v14, v8, v13

    .line 663
    .local v14, "legacyAlias":Ljava/lang/String;
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 664
    invoke-interface {v6, v14, v7}, Landroid/security/legacykeystore/ILegacyKeystore;->get(Ljava/lang/String;I)[B

    move-result-object v15

    .line 665
    .local v15, "value":[B
    invoke-virtual {v9, v14, v15}, Landroid/net/wifi/WifiBlobStore;->put(Ljava/lang/String;[B)Z

    .line 667
    .end local v15    # "value":[B
    :cond_2
    invoke-interface {v6, v14, v7}, Landroid/security/legacykeystore/ILegacyKeystore;->remove(Ljava/lang/String;I)V

    .line 660
    .end local v14    # "legacyAlias":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 669
    :cond_3
    const-string v7, "Successfully migrated aliases from Legacy Keystore"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    nop

    .line 682
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    return v12

    .line 651
    .end local v0    # "blobstoreAliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "wifiBlobStore":Landroid/net/wifi/WifiBlobStore;
    .end local v10    # "blobstoreAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    :try_start_1
    const-string v0, "No aliases need to be migrated"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    nop

    .line 682
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 652
    return v2

    .line 682
    .end local v6    # "legacyKeystore":Landroid/security/legacykeystore/ILegacyKeystore;
    .end local v8    # "legacyAliases":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered an exception while migrating aliases. "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    nop

    .line 682
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 680
    return v1

    .line 671
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/ServiceSpecificException;
    :try_start_3
    iget v6, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 673
    const-string v1, "Legacy Keystore service has been deprecated"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 674
    nop

    .line 682
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    return v2

    .line 676
    :cond_5
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered a ServiceSpecificException while migrating aliases. "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 677
    nop

    .line 682
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 677
    return v1

    .line 682
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 683
    throw v0
.end method

.method public static whitelist removeSharedConfigStoreFile(I)V
    .locals 3
    .param p0, "storeFileId"    # I

    .line 251
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid shared store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/net/wifi/WifiMigration;->getSharedAtomicFile(I)Landroid/util/AtomicFile;

    move-result-object v1

    .line 255
    .local v1, "file":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 257
    return-void

    .line 263
    :cond_2
    if-ne p0, v0, :cond_3

    .line 264
    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->remove()V

    .line 266
    :cond_3
    return-void
.end method

.method public static whitelist removeUserConfigStoreFile(ILandroid/os/UserHandle;)V
    .locals 2
    .param p0, "storeFileId"    # I
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 330
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid user store file id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiMigration;->getUserAtomicFile(II)Landroid/util/AtomicFile;

    move-result-object v0

    .line 336
    .local v0, "file":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 339
    :cond_2
    return-void
.end method
