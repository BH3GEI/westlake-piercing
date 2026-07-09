.class public Landroid/content/pm/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionParams;,
        Landroid/content/pm/PackageInstaller$Session;,
        Landroid/content/pm/PackageInstaller$SessionInfo;,
        Landroid/content/pm/PackageInstaller$InstallConstraints;,
        Landroid/content/pm/PackageInstaller$LocalIntentSender;,
        Landroid/content/pm/PackageInstaller$SessionCallback;,
        Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;,
        Landroid/content/pm/PackageInstaller$PackageParsingException;,
        Landroid/content/pm/PackageInstaller$InstallInfo;,
        Landroid/content/pm/PackageInstaller$UnarchivalState;,
        Landroid/content/pm/PackageInstaller$InstallConstraintsResult;,
        Landroid/content/pm/PackageInstaller$PreapprovalDetails;,
        Landroid/content/pm/PackageInstaller$UnarchivalStatus;,
        Landroid/content/pm/PackageInstaller$UserActionReason;,
        Landroid/content/pm/PackageInstaller$PackageSourceType;,
        Landroid/content/pm/PackageInstaller$FileLocation;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_INSTALL:Ljava/lang/String; = "android.content.pm.action.CONFIRM_INSTALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_CONFIRM_PRE_APPROVAL:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PRE_APPROVAL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_INSTALL_DEPENDENCY:Ljava/lang/String; = "android.content.pm.action.INSTALL_DEPENDENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SESSION_COMMITTED:Ljava/lang/String; = "android.content.pm.action.SESSION_COMMITTED"

.field public static final ACTION_SESSION_DETAILS:Ljava/lang/String; = "android.content.pm.action.SESSION_DETAILS"

.field public static final ACTION_SESSION_UPDATED:Ljava/lang/String; = "android.content.pm.action.SESSION_UPDATED"

.field private static final ACTION_WAIT_INSTALL_CONSTRAINTS:Ljava/lang/String; = "android.content.pm.action.WAIT_INSTALL_CONSTRAINTS"

.field public static final DATA_LOADER_TYPE_INCREMENTAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DATA_LOADER_TYPE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DATA_LOADER_TYPE_STREAMING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final DEFAULT_CHECKSUMS:I = 0x7f

.field public static final ENABLE_REVOCABLE_FD:Z

.field public static final EXTRA_CALLBACK:Ljava/lang/String; = "android.content.pm.extra.CALLBACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_DATA_LOADER_TYPE:Ljava/lang/String; = "android.content.pm.extra.DATA_LOADER_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_DELETE_FLAGS:Ljava/lang/String; = "android.content.pm.extra.DELETE_FLAGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_INSTALL_CONSTRAINTS:Ljava/lang/String; = "android.content.pm.extra.INSTALL_CONSTRAINTS"

.field public static final EXTRA_INSTALL_CONSTRAINTS_RESULT:Ljava/lang/String; = "android.content.pm.extra.INSTALL_CONSTRAINTS_RESULT"

.field public static final EXTRA_LEGACY_BUNDLE:Ljava/lang/String; = "android.content.pm.extra.LEGACY_BUNDLE"

.field public static final EXTRA_LEGACY_STATUS:Ljava/lang/String; = "android.content.pm.extra.LEGACY_STATUS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_OTHER_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.OTHER_PACKAGE_NAME"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAME"

.field public static final EXTRA_PACKAGE_NAMES:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAMES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PRE_APPROVAL:Ljava/lang/String; = "android.content.pm.extra.PRE_APPROVAL"

.field public static final EXTRA_RESOLVED_BASE_PATH:Ljava/lang/String; = "android.content.pm.extra.RESOLVED_BASE_PATH"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SESSION:Ljava/lang/String; = "android.content.pm.extra.SESSION"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.content.pm.extra.STATUS"

.field public static final EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.pm.extra.STATUS_MESSAGE"

.field public static final EXTRA_STORAGE_PATH:Ljava/lang/String; = "android.content.pm.extra.STORAGE_PATH"

.field public static final EXTRA_UNARCHIVE_ALL_USERS:Ljava/lang/String; = "android.content.pm.extra.UNARCHIVE_ALL_USERS"

.field public static final EXTRA_UNARCHIVE_ID:Ljava/lang/String; = "android.content.pm.extra.UNARCHIVE_ID"

.field public static final EXTRA_UNARCHIVE_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.UNARCHIVE_PACKAGE_NAME"

.field public static final EXTRA_UNARCHIVE_STATUS:Ljava/lang/String; = "android.content.pm.extra.UNARCHIVE_STATUS"

.field public static final EXTRA_WARNINGS:Ljava/lang/String; = "android.content.pm.extra.WARNINGS"

.field public static final LOCATION_DATA_APP:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LOCATION_MEDIA_DATA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LOCATION_MEDIA_OBB:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PACKAGE_SOURCE_DOWNLOADED_FILE:I = 0x4

.field public static final PACKAGE_SOURCE_LOCAL_FILE:I = 0x3

.field public static final PACKAGE_SOURCE_OTHER:I = 0x1

.field public static final PACKAGE_SOURCE_STORE:I = 0x2

.field public static final PACKAGE_SOURCE_UNSPECIFIED:I = 0x0

.field public static final REASON_CONFIRM_PACKAGE_CHANGE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REASON_OWNERSHIP_CHANGED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final REASON_REMIND_OWNERSHIP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_FAILURE_ABORTED:I = 0x3

.field public static final STATUS_FAILURE_BLOCKED:I = 0x2

.field public static final STATUS_FAILURE_CONFLICT:I = 0x5

.field public static final STATUS_FAILURE_INCOMPATIBLE:I = 0x7

.field public static final STATUS_FAILURE_INVALID:I = 0x4

.field public static final STATUS_FAILURE_STORAGE:I = 0x6

.field public static final STATUS_FAILURE_TIMEOUT:I = 0x8

.field public static final STATUS_PENDING_STREAMING:I = -0x2

.field public static final STATUS_PENDING_USER_ACTION:I = -0x1

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field public static final UNARCHIVAL_ERROR_INSTALLER_DISABLED:I = 0x4

.field public static final UNARCHIVAL_ERROR_INSTALLER_UNINSTALLED:I = 0x5

.field public static final UNARCHIVAL_ERROR_INSUFFICIENT_STORAGE:I = 0x2

.field public static final UNARCHIVAL_ERROR_NO_CONNECTIVITY:I = 0x3

.field public static final UNARCHIVAL_ERROR_USER_ACTION_NEEDED:I = 0x1

.field public static final UNARCHIVAL_GENERIC_ERROR:I = 0x64

.field public static final UNARCHIVAL_OK:I = 0x0

.field public static final UNARCHIVAL_STATUS_UNSET:I = -0x1


# instance fields
.field private final mAttributionTag:Ljava/lang/String;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstaller:Landroid/content/pm/IPackageInstaller;

.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 157
    nop

    .line 158
    const-string v0, "fw.revocable_fd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPackageInstaller;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "installer"    # Landroid/content/pm/IPackageInstaller;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    .line 792
    const-string/jumbo v0, "installer cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 793
    iput-object p1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    .line 794
    iput-object p2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    .line 795
    iput-object p3, p0, Landroid/content/pm/PackageInstaller;->mAttributionTag:Ljava/lang/String;

    .line 796
    iput p4, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    .line 797
    return-void
.end method

.method static synthetic lambda$checkInstallConstraints$0(Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 1208
    const-string/jumbo v0, "result"

    const-class v1, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1209
    return-void
.end method

.method static synthetic lambda$checkInstallConstraints$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 1207
    new-instance v0, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1210
    return-void
.end method


# virtual methods
.method public abandonSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 894
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    nop

    .line 898
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1454
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 1455
    return-void
.end method

.method public addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1468
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 1469
    return-void
.end method

.method public checkInstallConstraints(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .param p2, "constraints"    # Landroid/content/pm/PackageInstaller$InstallConstraints;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInstaller$InstallConstraints;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/PackageInstaller$InstallConstraintsResult;",
            ">;)V"
        }
    .end annotation

    .line 1203
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/pm/PackageInstaller$InstallConstraintsResult;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    :try_start_0
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p4}, Landroid/content/pm/PackageInstaller$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 1211
    .local v0, "remoteCallback":Landroid/os/RemoteCallback;
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, v0}, Landroid/content/pm/IPackageInstaller;->checkInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    .end local v0    # "remoteCallback":Landroid/os/RemoteCallback;
    nop

    .line 1216
    return-void

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public commitSessionAfterInstallConstraintsAreMet(ILandroid/content/IntentSender;Landroid/content/pm/PackageInstaller$InstallConstraints;J)V
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;
    .param p3, "constraints"    # Landroid/content/pm/PackageInstaller$InstallConstraints;
    .param p4, "timeoutMillis"    # J

    .line 1277
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0

    .line 1278
    .local v0, "session":Landroid/content/pm/IPackageInstallerSession;
    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->seal()V

    .line 1279
    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->fetchPackageNames()Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    .line 1280
    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 1281
    .local v1, "context":Landroid/app/Application;
    new-instance v2, Landroid/content/pm/PackageInstaller$LocalIntentSender;

    invoke-direct {v2, v1, p1, v0, p2}, Landroid/content/pm/PackageInstaller$LocalIntentSender;-><init>(Landroid/content/Context;ILandroid/content/pm/IPackageInstallerSession;Landroid/content/IntentSender;)V

    move-object v8, v2

    .line 1283
    .local v8, "localIntentSender":Landroid/content/pm/PackageInstaller$LocalIntentSender;
    nop

    .line 1284
    invoke-static {v8}, Landroid/content/pm/PackageInstaller$LocalIntentSender;->-$$Nest$mgetIntentSender(Landroid/content/pm/PackageInstaller$LocalIntentSender;)Landroid/content/IntentSender;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1283
    move-object v2, p0

    move-object v4, p3

    move-wide v6, p4

    .end local p3    # "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .end local p4    # "timeoutMillis":J
    .local v4, "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .local v6, "timeoutMillis":J
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller;->waitForInstallConstraints(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1287
    .end local v0    # "session":Landroid/content/pm/IPackageInstallerSession;
    .end local v1    # "context":Landroid/app/Application;
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "localIntentSender":Landroid/content/pm/PackageInstaller$LocalIntentSender;
    nop

    .line 1288
    return-void

    .line 1285
    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_0

    .end local v4    # "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .end local v6    # "timeoutMillis":J
    .restart local p3    # "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .restart local p4    # "timeoutMillis":J
    :catch_1
    move-exception v0

    move-object v4, p3

    move-wide v6, p4

    move-object p3, v0

    .line 1286
    .end local p4    # "timeoutMillis":J
    .restart local v4    # "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .restart local v6    # "timeoutMillis":J
    .local p3, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p4

    throw p4
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 4
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mAttributionTag:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 821
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 823
    throw v0
.end method

.method public getActiveStagedSession()Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 966
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getActiveStagedSessions()Ljava/util/List;

    move-result-object v0

    .line 967
    .local v0, "activeSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    :goto_0
    return-object v1
.end method

.method public getActiveStagedSessions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 977
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v0, "activeStagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getStagedSessions()Ljava/util/List;

    move-result-object v1

    .line 979
    .local v1, "stagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 980
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 981
    .local v3, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 982
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    .end local v3    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 985
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getAllSessions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 924
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstaller;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMySessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 935
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageInstaller;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 2
    .param p1, "sessionId"    # I

    .line 910
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getStagedSessions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 949
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public installExistingPackage(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installReason"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1107
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1109
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v6, p0, Landroid/content/pm/PackageInstaller;->mUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x0

    const/high16 v3, 0x400000

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "installReason":I
    .end local p3    # "statusReceiver":Landroid/content/IntentSender;
    .local v2, "packageName":Ljava/lang/String;
    .local v4, "installReason":I
    .local v5, "statusReceiver":Landroid/content/IntentSender;
    :try_start_1
    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1114
    nop

    .line 1115
    return-void

    .line 1112
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "installReason":I
    .end local v5    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "installReason":I
    .restart local p3    # "statusReceiver":Landroid/content/IntentSender;
    :catch_1
    move-exception v0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 1113
    .end local p2    # "installReason":I
    .end local p3    # "statusReceiver":Landroid/content/IntentSender;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "installReason":I
    .restart local v5    # "statusReceiver":Landroid/content/IntentSender;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public installPackageArchived(Landroid/content/pm/ArchivedPackageInfo;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;)V
    .locals 7
    .param p1, "archivedPackageInfo"    # Landroid/content/pm/ArchivedPackageInfo;
    .param p2, "sessionParams"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1155
    const-string v0, "archivedPackageInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1156
    const-string/jumbo v0, "sessionParams cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1157
    const-string/jumbo v0, "statusReceiver cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1159
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    .line 1160
    invoke-virtual {p1}, Landroid/content/pm/ArchivedPackageInfo;->getParcel()Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v2

    iget-object v5, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    new-instance v6, Landroid/os/UserHandle;

    iget v0, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1159
    move-object v3, p2

    move-object v4, p3

    .end local p2    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p3    # "statusReceiver":Landroid/content/IntentSender;
    .local v3, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v4, "statusReceiver":Landroid/content/IntentSender;
    :try_start_1
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstaller;->installPackageArchived(Landroid/content/pm/ArchivedPackageParcel;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1167
    nop

    .line 1168
    return-void

    .line 1165
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v3    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v4    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p2    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p3    # "statusReceiver":Landroid/content/IntentSender;
    :catch_1
    move-exception v0

    move-object v3, p2

    move-object v4, p3

    move-object p2, v0

    .line 1166
    .end local p3    # "statusReceiver":Landroid/content/IntentSender;
    .restart local v3    # "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v4    # "statusReceiver":Landroid/content/IntentSender;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public openSession(I)Landroid/content/pm/PackageInstaller$Session;
    .locals 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    :try_start_0
    new-instance v0, Landroid/content/pm/PackageInstaller$Session;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 845
    :catch_0
    move-exception v0

    goto :goto_0

    .line 842
    :catch_1
    move-exception v0

    .line 843
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/content/pm/PackageInstaller;
    .end local p1    # "sessionId":I
    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 846
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller;
    .restart local p1    # "sessionId":I
    :goto_0
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 847
    throw v0
.end method

.method public readInstallInfo(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageInstaller$InstallInfo;
    .locals 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "debugPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageInstaller$PackageParsingException;
        }
    .end annotation

    .line 2409
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 2410
    .local v0, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 2411
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 2410
    invoke-static {v0, v1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2412
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2415
    new-instance v2, Landroid/content/pm/PackageInstaller$InstallInfo;

    invoke-direct {v2, v1}, Landroid/content/pm/PackageInstaller$InstallInfo;-><init>(Landroid/content/pm/parsing/result/ParseResult;)V

    return-object v2

    .line 2413
    :cond_0
    new-instance v2, Landroid/content/pm/PackageInstaller$PackageParsingException;

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v3

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/pm/PackageInstaller$PackageParsingException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public readInstallInfo(Ljava/io/File;I)Landroid/content/pm/PackageInstaller$InstallInfo;
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageInstaller$PackageParsingException;
        }
    .end annotation

    .line 2388
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 2389
    .local v0, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 2390
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v1

    .line 2389
    invoke-static {v1, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 2391
    .local v1, "result":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2394
    new-instance v2, Landroid/content/pm/PackageInstaller$InstallInfo;

    invoke-direct {v2, v1}, Landroid/content/pm/PackageInstaller$InstallInfo;-><init>(Landroid/content/pm/parsing/result/ParseResult;)V

    return-object v2

    .line 2392
    :cond_0
    new-instance v2, Landroid/content/pm/PackageInstaller$PackageParsingException;

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v3

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/pm/PackageInstaller$PackageParsingException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1462
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 1463
    return-void
.end method

.method public registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1479
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1480
    :try_start_0
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p1, v2}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;-><init>(Landroid/content/pm/PackageInstaller$SessionCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    .local v1, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v2, v1, v3}, Landroid/content/pm/IPackageInstaller;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1486
    nop

    .line 1487
    :try_start_2
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    nop

    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    monitor-exit v0

    .line 1489
    return-void

    .line 1484
    .restart local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :catch_0
    move-exception v2

    .line 1485
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/pm/PackageInstaller;
    .end local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v3

    .line 1488
    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller;
    .restart local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1494
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 1495
    return-void
.end method

.method public reportUnarchivalState(Landroid/content/pm/PackageInstaller$UnarchivalState;)V
    .locals 8
    .param p1, "unarchivalState"    # Landroid/content/pm/PackageInstaller$UnarchivalState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2533
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2535
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$UnarchivalState;->getUnarchiveId()I

    move-result v1

    .line 2536
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$UnarchivalState;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$UnarchivalState;->getRequiredStorageBytes()J

    move-result-wide v3

    .line 2537
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$UnarchivalState;->getUserActionIntent()Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 2535
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller;->reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2538
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2539
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2542
    .end local v0    # "e":Landroid/os/ParcelableException;
    :goto_0
    nop

    .line 2543
    return-void
.end method

.method public reportUnarchivalStatus(IIJLandroid/app/PendingIntent;)V
    .locals 7
    .param p1, "unarchiveId"    # I
    .param p2, "status"    # I
    .param p3, "requiredStorageBytes"    # J
    .param p5, "userActionIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2511
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    new-instance v6, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "unarchiveId":I
    .end local p2    # "status":I
    .end local p3    # "requiredStorageBytes":J
    .end local p5    # "userActionIntent":Landroid/app/PendingIntent;
    .local v1, "unarchiveId":I
    .local v2, "status":I
    .local v3, "requiredStorageBytes":J
    .local v5, "userActionIntent":Landroid/app/PendingIntent;
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller;->reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/os/ParcelableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2518
    nop

    .line 2519
    return-void

    .line 2516
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 2513
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 2516
    .end local v1    # "unarchiveId":I
    .end local v2    # "status":I
    .end local v3    # "requiredStorageBytes":J
    .end local v5    # "userActionIntent":Landroid/app/PendingIntent;
    .restart local p1    # "unarchiveId":I
    .restart local p2    # "status":I
    .restart local p3    # "requiredStorageBytes":J
    .restart local p5    # "userActionIntent":Landroid/app/PendingIntent;
    :catch_2
    move-exception v0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object p1, v0

    .line 2517
    .end local p2    # "status":I
    .end local p3    # "requiredStorageBytes":J
    .end local p5    # "userActionIntent":Landroid/app/PendingIntent;
    .restart local v1    # "unarchiveId":I
    .restart local v2    # "status":I
    .restart local v3    # "requiredStorageBytes":J
    .restart local v5    # "userActionIntent":Landroid/app/PendingIntent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 2513
    .end local v1    # "unarchiveId":I
    .end local v2    # "status":I
    .end local v3    # "requiredStorageBytes":J
    .end local v5    # "userActionIntent":Landroid/app/PendingIntent;
    .local p1, "unarchiveId":I
    .restart local p2    # "status":I
    .restart local p3    # "requiredStorageBytes":J
    .restart local p5    # "userActionIntent":Landroid/app/PendingIntent;
    :catch_3
    move-exception v0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object p1, v0

    .line 2514
    .end local p2    # "status":I
    .end local p3    # "requiredStorageBytes":J
    .end local p5    # "userActionIntent":Landroid/app/PendingIntent;
    .restart local v1    # "unarchiveId":I
    .restart local v2    # "status":I
    .restart local v3    # "requiredStorageBytes":J
    .restart local v5    # "userActionIntent":Landroid/app/PendingIntent;
    .local p1, "e":Landroid/os/ParcelableException;
    :goto_1
    const-class p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2515
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public requestArchive(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2441
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    new-instance v5, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "statusReceiver":Landroid/content/IntentSender;
    .local v1, "packageName":Ljava/lang/String;
    .local v4, "statusReceiver":Landroid/content/IntentSender;
    :try_start_1
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/os/ParcelableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2448
    nop

    .line 2449
    return-void

    .line 2446
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 2443
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 2446
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v4    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "statusReceiver":Landroid/content/IntentSender;
    :catch_2
    move-exception v0

    move-object v1, p1

    move-object v4, p2

    move-object p1, v0

    .line 2447
    .end local p2    # "statusReceiver":Landroid/content/IntentSender;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v4    # "statusReceiver":Landroid/content/IntentSender;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 2443
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v4    # "statusReceiver":Landroid/content/IntentSender;
    .local p1, "packageName":Ljava/lang/String;
    .restart local p2    # "statusReceiver":Landroid/content/IntentSender;
    :catch_3
    move-exception v0

    move-object v1, p1

    move-object v4, p2

    move-object p1, v0

    .line 2444
    .end local p2    # "statusReceiver":Landroid/content/IntentSender;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v4    # "statusReceiver":Landroid/content/IntentSender;
    .local p1, "e":Landroid/os/ParcelableException;
    :goto_1
    const-class p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1, p2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2445
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public requestUnarchive(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2477
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/content/pm/IPackageInstaller;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2485
    nop

    .line 2486
    return-void

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2479
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2480
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2481
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 2482
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPermissionsResult(IZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1175
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->setPermissionsResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    nop

    .line 1179
    return-void

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V
    .locals 7
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "flags"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1078
    const-string/jumbo v0, "versionedPackage cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1080
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v6, p0, Landroid/content/pm/PackageInstaller;->mUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    .end local p1    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .end local p2    # "flags":I
    .end local p3    # "statusReceiver":Landroid/content/IntentSender;
    .local v2, "versionedPackage":Landroid/content/pm/VersionedPackage;
    .local v4, "flags":I
    .local v5, "statusReceiver":Landroid/content/IntentSender;
    :try_start_1
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1084
    nop

    .line 1085
    return-void

    .line 1082
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .end local v4    # "flags":I
    .end local v5    # "statusReceiver":Landroid/content/IntentSender;
    .restart local p1    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .restart local p2    # "flags":I
    .restart local p3    # "statusReceiver":Landroid/content/IntentSender;
    :catch_1
    move-exception v0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object p1, v0

    .line 1083
    .end local p2    # "flags":I
    .end local p3    # "statusReceiver":Landroid/content/IntentSender;
    .restart local v2    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .restart local v4    # "flags":I
    .restart local v5    # "statusReceiver":Landroid/content/IntentSender;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1056
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V

    .line 1057
    return-void
.end method

.method public uninstall(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1026
    new-instance v0, Landroid/content/pm/VersionedPackage;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/pm/PackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V

    .line 1028
    return-void
.end method

.method public uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;ILandroid/content/IntentSender;)V

    .line 1009
    return-void
.end method

.method public uninstallExistingPackage(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1129
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1131
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/content/pm/IPackageInstaller;->uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    nop

    .line 1137
    return-void

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 1501
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1502
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1503
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    .line 1504
    .local v2, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 1506
    :try_start_1
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageInstaller;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1509
    nop

    .line 1510
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1507
    :catch_0
    move-exception v3

    .line 1508
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/content/pm/PackageInstaller;
    .end local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    throw v4

    .line 1512
    .end local v2    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller;
    .restart local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1513
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :cond_1
    monitor-exit v0

    .line 1514
    return-void

    .line 1513
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;

    .line 861
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    nop

    .line 865
    return-void

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateSessionAppLabel(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/CharSequence;

    .line 876
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 878
    :catch_0
    move-exception v0

    goto :goto_1

    .line 876
    :cond_0
    const/4 v0, 0x0

    .line 877
    .local v0, "val":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1, v0}, Landroid/content/pm/IPackageInstaller;->updateSessionAppLabel(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v0    # "val":Ljava/lang/String;
    nop

    .line 881
    return-void

    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public waitForInstallConstraints(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    .locals 7
    .param p2, "constraints"    # Landroid/content/pm/PackageInstaller$InstallConstraints;
    .param p3, "callback"    # Landroid/content/IntentSender;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInstaller$InstallConstraints;",
            "Landroid/content/IntentSender;",
            "J)V"
        }
    .end annotation

    .line 1245
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .end local p1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p2    # "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .end local p3    # "callback":Landroid/content/IntentSender;
    .end local p4    # "timeoutMillis":J
    .local v2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .local v4, "callback":Landroid/content/IntentSender;
    .local v5, "timeoutMillis":J
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller;->waitForInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1249
    nop

    .line 1250
    return-void

    .line 1247
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v2    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .end local v4    # "callback":Landroid/content/IntentSender;
    .end local v5    # "timeoutMillis":J
    .restart local p1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .restart local p3    # "callback":Landroid/content/IntentSender;
    .restart local p4    # "timeoutMillis":J
    :catch_1
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object p1, v0

    .line 1248
    .end local p2    # "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .end local p3    # "callback":Landroid/content/IntentSender;
    .end local p4    # "timeoutMillis":J
    .restart local v2    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "constraints":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .restart local v4    # "callback":Landroid/content/IntentSender;
    .restart local v5    # "timeoutMillis":J
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method
