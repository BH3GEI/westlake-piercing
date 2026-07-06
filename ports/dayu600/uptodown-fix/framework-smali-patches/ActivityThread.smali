.class public final Landroid/app/ActivityThread;
.super Landroid/app/ClientTransactionHandler;
.source "ActivityThread.java"

# interfaces
.implements Landroid/app/ActivityThreadInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$SafeCancellationTransport;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$PurgeIdler;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$DumpResourcesData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ProviderKey;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$AndroidOs;,
        Landroid/app/ActivityThread$ReceiverList;
    }
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static final CONTENT_PROVIDER_RETAIN_TIME:J = 0x3e8L

.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field public static final DEBUG_CONFIGURATION:Z = false

.field public static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field public static final DEBUG_ORDER:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

.field private static final DEFAULT_FULL_BACKUP_AGENT:Ljava/lang/String; = "android.app.backup.FullBackupAgent"

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field public static final INVALID_PROC_STATE_SEQ:J = -0x1L

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final ONE_ALT_COUNT_COLUMN:Ljava/lang/String; = "%21s %8s %21s %8d"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field public static final PROC_START_SEQ_IDENT:Ljava/lang/String; = "seq="

.field private static final REQUEST_DIRECT_ACTIONS_RETRY_MAX_COUNT:I = 0x7

.field private static final REQUEST_DIRECT_ACTIONS_RETRY_TIME_MS:J = 0xc8L

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THREE_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8s %21s %8d"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final TWO_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s %21s %8s"

.field private static final VM_PROCESS_STATE_JANK_IMPERCEPTIBLE:I = 0x1

.field private static final VM_PROCESS_STATE_JANK_PERCEPTIBLE:I

.field static final localLOGV:Z

.field private static volatile sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field static volatile sMainThreadHandler:Landroid/os/Handler;

.field static volatile sPackageManager:Landroid/content/pm/IPackageManager;

.field private static volatile sPermissionManager:Landroid/permission/IPermissionManager;


# instance fields
.field final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mActivitiesToBeDestroyed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private final mBackupAgentsByUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;>;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field mConfiguration:Landroid/content/res/Configuration;

.field private mConfigurationController:Landroid/app/ConfigurationController;

.field private mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

.field mCoreSettings:Landroid/os/Bundle;

.field private final mCoreSettingsLock:Ljava/lang/Object;

.field mCurDefaultDisplayDpi:I

.field mDensityCompatMode:Z

.field private mDisplaySystemUiContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ContextImpl;",
            ">;"
        }
    .end annotation
.end field

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mGetProviderKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderKey;",
            ">;"
        }
    .end annotation
.end field

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationLibDir:Ljava/lang/String;

.field mInstrumentationPackageName:Ljava/lang/String;

.field mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedLibDir:Ljava/lang/String;

.field mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field mInstrumentingWithoutRestart:Z

.field mLastAssistStructures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/assist/AssistStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastProcessState:I

.field mLastReportedDeviceId:I

.field private mLastSessionId:I

.field final mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field private mNetworkBlockSeq:J

.field private final mNetworkPolicyLock:Ljava/lang/Object;

.field final mNewActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field private final mPendingOverrideConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

.field mPurgeIdlerScheduled:Z

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteCancellations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/ActivityThread$SafeCancellationTransport;",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field

.field final mResourcePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field final mServicesData:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$CreateServiceData;",
            ">;"
        }
    .end annotation
.end field

.field mSomeActivitiesChanged:Z

.field private mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

.field private mStartSeq:J

.field private mSystemContext:Landroid/app/ContextImpl;

.field mSystemThread:Z

.field private final mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

.field private mUpdateHttpProxyOnBind:Z


# direct methods
.method public static synthetic $r8$lambda$6LUSYb_4GdQAv7i7QDyO-PcdSqo(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kuOz_ZamCg0hAwBq_HLTZwHLNgI(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->lambda$attach$2(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFMoOisyD5hrqE37Jh7SYYMQGB8(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->lambda$syncTransferSplashscreenViewTransaction$1(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConfigurationController(Landroid/app/ActivityThread;)Landroid/app/ConfigurationController;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkPolicyLock(Landroid/app/ActivityThread;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNetworkBlockSeq(Landroid/app/ActivityThread;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdateHttpProxyOnBind(Landroid/app/ActivityThread;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->createSafeCancellationTransport(Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetGetProviderKey(Landroid/app/ActivityThread;Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleBindApplication(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleBindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCreateBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCreateService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDestroyBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDumpActivity(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDumpGfxInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpGfxInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDumpProvider(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDumpResources(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpResourcesData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpResources(Landroid/app/ActivityThread$DumpResourcesData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDumpService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEnterAnimationComplete(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleFinishInstrumentationWithoutRestart(Landroid/app/ActivityThread;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleFinishInstrumentationWithoutRestart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInstrumentWithoutRestart(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleInstrumentWithoutRestart(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLocalVoiceInteractionStarted(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePerformDirectAction(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handlePerformDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleReceiver(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRequestDirectActions(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRunIsolatedEntryPoint(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleServiceArgs(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetContentCaptureOptionsCallback(Landroid/app/ActivityThread;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSetCoreSettings(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStartBinderTracking(Landroid/app/ActivityThread;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleStartBinderTracking()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopService(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTimeoutService(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleTimeoutService(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTrimMemory(Landroid/app/ActivityThread;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUnbindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpurgePendingResources(Landroid/app/ActivityThread;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/ActivityThread;->purgePendingResources()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->removeSafeCancellationTransport(Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncTransferSplashscreenViewTransaction(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mthrowRemoteServiceException(Landroid/app/ActivityThread;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->throwRemoteServiceException(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUiTranslationState(Landroid/app/ActivityThread;Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/ActivityThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 272
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 4402
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 2818
    invoke-direct {p0}, Landroid/app/ClientTransactionHandler;-><init>()V

    .line 321
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    .line 331
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    .line 343
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread-IA;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 345
    nop

    .line 346
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 347
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 349
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    .line 357
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 360
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    .line 363
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 364
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNewActivities:Ljava/util/ArrayList;

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 370
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 371
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    .line 377
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    .line 378
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 393
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    .line 397
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 405
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    .line 412
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 413
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 415
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 416
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 417
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 419
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 420
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 422
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 423
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 434
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 437
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 442
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 447
    new-instance v2, Landroid/app/servertransaction/TransactionExecutor;

    invoke-direct {v2, p0}, Landroid/app/servertransaction/TransactionExecutor;-><init>(Landroid/app/ClientTransactionHandler;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    .line 486
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 489
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 492
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 495
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 502
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    .line 505
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 510
    new-instance v2, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 511
    new-instance v2, Landroid/app/ActivityThread$PurgeIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$PurgeIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    .line 513
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 514
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 520
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 525
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    .line 527
    iput-object v1, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 2819
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2820
    return-void
.end method

.method private attach(ZJ)V
    .registers 8
    .param p1, "system"    # Z
    .param p2, "startSeq"    # J

    .line 7871
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 7872
    new-instance v0, Landroid/app/ConfigurationController;

    invoke-direct {v0, p0}, Landroid/app/ConfigurationController;-><init>(Landroid/app/ActivityThreadInternal;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 7873
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 7874
    iput-wide p2, p0, Landroid/app/ActivityThread;->mStartSeq:J

    .line 7876
    if-nez p1, :cond_3b

    .line 7877
    nop

    .line 7878
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 7877
    const-string v1, "<pre-initialized>"

    invoke-static {v1, v0}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 7879
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 7880
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7882
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_26
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;J)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_35

    .line 7885
    nop

    .line 7887
    new-instance v1, Landroid/app/ActivityThread$3;

    invoke-direct {v1, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 7908
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    goto :goto_69

    .line 7883
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_35
    move-exception v1

    .line 7884
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 7911
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3b
    nop

    .line 7912
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 7911
    const-string/jumbo v1, "system_process"

    invoke-static {v1, v0}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 7914
    :try_start_46
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 7915
    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 7916
    nop

    .line 7917
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 7916
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 7918
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 7919
    invoke-virtual {v1}, Landroid/app/Application;->onCreate()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_68} :catch_72

    .line 7923
    .end local v0    # "context":Landroid/app/ContextImpl;
    nop

    .line 7926
    :goto_69
    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityThread;)V

    .line 7945
    .local v0, "configChangedCallback":Landroid/view/ViewRootImpl$ConfigChangedCallback;
    invoke-static {v0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 7946
    return-void

    .line 7920
    .end local v0    # "configChangedCallback":Landroid/view/ViewRootImpl$ConfigChangedCallback;
    :catch_72
    move-exception v0

    .line 7921
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate Application():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7922
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .registers 5
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 4349
    :try_start_0
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    .line 4350
    const/4 v0, 0x1

    return v0

    .line 4351
    :catch_5
    move-exception v0

    .line 4352
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching agent with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    const/4 v1, 0x0

    return v1
.end method

.method private callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5972
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5973
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 5974
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5975
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 5976
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_2f

    .line 5979
    :cond_26
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 5981
    :goto_2f
    return-void
.end method

.method private callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5377
    if-eqz p2, :cond_14

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_14

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v0, :cond_14

    .line 5378
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 5379
    .local v0, "shouldSaveState":Z
    :goto_15
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreP(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    .line 5380
    .local v1, "isPreP":Z
    if-eqz v0, :cond_20

    if-eqz v1, :cond_20

    .line 5381
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5385
    :cond_20
    :try_start_20
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v2, v3, p3}, Landroid/app/Activity;->performStop(ZLjava/lang/String;)V
    :try_end_27
    .catch Landroid/util/SuperNotCalledException; {:try_start_20 .. :try_end_27} :catch_70
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    .line 5395
    goto :goto_33

    .line 5388
    :catch_28
    move-exception v2

    .line 5389
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 5396
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_33
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5398
    if-eqz v0, :cond_3e

    if-nez v1, :cond_3e

    .line 5399
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5401
    :cond_3e
    return-void

    .line 5390
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_3f
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5392
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5393
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5386
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_70
    move-exception v2

    .line 5387
    .local v2, "e":Landroid/util/SuperNotCalledException;
    throw v2
.end method

.method private checkAndBlockForNetworkAccess()V
    .registers 8

    .line 3872
    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3873
    :try_start_3
    iget-wide v1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1b

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_19

    .line 3875
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-wide v5, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->waitForNetworkStateUpdate(J)V

    .line 3876
    iput-wide v3, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17
    .catchall {:try_start_b .. :try_end_16} :catchall_1b

    goto :goto_18

    .line 3877
    :catch_17
    move-exception v1

    :goto_18
    nop

    .line 3879
    :cond_19
    :try_start_19
    monitor-exit v0

    .line 3880
    return-void

    .line 3879
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 6
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "force"    # Z

    .line 4986
    iget-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 4987
    return-void

    .line 4989
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v0, :cond_35

    .line 4990
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4991
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4990
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4992
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 4993
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_35

    .line 4994
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4995
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4994
    const-string v3, "Activity"

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4998
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 4999
    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 5000
    return-void
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3883
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0

    .line 3884
    .local v0, "displayId":I
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    move v6, v0

    invoke-static/range {v2 .. v7}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v1

    .line 3887
    .local v1, "appContext":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    .line 3891
    .local v2, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const-string v3, "debug.second-display.pkg"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3892
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_54

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v4, v4, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 3893
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 3894
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3a
    if-ge v6, v5, :cond_54

    aget v7, v4, v6

    .line 3895
    .local v7, "id":I
    if-eqz v7, :cond_51

    .line 3896
    nop

    .line 3897
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v4

    .line 3898
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v1, v4}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/app/ContextImpl;

    .line 3899
    goto :goto_54

    .line 3894
    .end local v4    # "display":Landroid/view/Display;
    .end local v7    # "id":I
    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 3903
    :cond_54
    :goto_54
    return-object v1
.end method

.method private createSafeCancellationTransport(Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;
    .registers 4
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 2028
    monitor-enter p0

    .line 2029
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 2030
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2032
    :cond_c
    new-instance v0, Landroid/app/ActivityThread$SafeCancellationTransport;

    invoke-direct {v0, p0, p1}, Landroid/app/ActivityThread$SafeCancellationTransport;-><init>(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)V

    .line 2034
    .local v0, "transport":Landroid/app/ActivityThread$SafeCancellationTransport;
    iget-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    monitor-exit p0

    return-object v0

    .line 2036
    .end local v0    # "transport":Landroid/app/ActivityThread$SafeCancellationTransport;
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .registers 15
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p3, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p4, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4244
    new-instance v0, Landroid/window/SplashScreenView$Builder;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/window/SplashScreenView$Builder;-><init>(Landroid/content/Context;)V

    .line 4245
    .local v0, "builder":Landroid/window/SplashScreenView$Builder;
    invoke-virtual {v0, p3}, Landroid/window/SplashScreenView$Builder;->createFromParcel(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/window/SplashScreenView$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/SplashScreenView$Builder;->build()Landroid/window/SplashScreenView;

    move-result-object v1

    .line 4246
    .local v1, "view":Landroid/window/SplashScreenView;
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/window/SplashScreenView;->attachHostWindow(Landroid/view/Window;)V

    .line 4247
    invoke-virtual {p2, v1}, Lcom/android/internal/policy/DecorView;->addView(Landroid/view/View;)V

    .line 4248
    invoke-virtual {v1}, Landroid/window/SplashScreenView;->requestLayout()V

    .line 4250
    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v9, Landroid/app/ActivityThread$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;Landroid/window/SplashScreenView;Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/view/SurfaceControl;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4268
    return-void
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .registers 1

    .line 2531
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .registers 2

    .line 2566
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2567
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public static currentAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 2545
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2546
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2547
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2546
    :goto_16
    return-object v1
.end method

.method public static currentOpPackageName()Ljava/lang/String;
    .registers 2

    .line 2539
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2540
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 2541
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 2540
    :goto_16
    return-object v1
.end method

.method public static currentPackageName()Ljava/lang/String;
    .registers 2

    .line 2552
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2553
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_f

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_f

    .line 2554
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 2553
    :goto_10
    return-object v1
.end method

.method public static currentProcessName()Ljava/lang/String;
    .registers 2

    .line 2559
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2560
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_d

    .line 2561
    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 2560
    :goto_e
    return-object v1
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .registers 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 3972
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3973
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_36

    .line 3974
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 3975
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3976
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3977
    invoke-virtual {v4}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 3976
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 3978
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 3979
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 3973
    .end local v2    # "intent":Lcom/android/internal/content/ReferrerIntent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3981
    .end local v1    # "i":I
    :cond_36
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .registers 14
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5526
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 5527
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_85

    .line 5528
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ResultInfo;

    .line 5530
    .local v2, "ri":Landroid/app/ResultInfo;
    :try_start_d
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v3, :cond_2d

    .line 5531
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 5532
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v4}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5533
    invoke-virtual {v5}, Landroid/app/Activity;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    .line 5532
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 5537
    :cond_2d
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v2, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v2, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v2, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3b} :catch_3c

    .line 5546
    goto :goto_47

    .line 5539
    :catch_3c
    move-exception v3

    .line 5540
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 5527
    .end local v2    # "ri":Landroid/app/ResultInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5541
    .restart local v2    # "ri":Landroid/app/ResultInfo;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_4a
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5543
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5544
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 5548
    .end local v1    # "i":I
    .end local v2    # "ri":Landroid/app/ResultInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_85
    return-void
.end method

.method public static dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V
    .registers 62
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "dumpDalvik"    # Z
    .param p3, "dumpSummaryOnly"    # Z
    .param p4, "nativeMax"    # J
    .param p6, "nativeAllocated"    # J
    .param p8, "nativeFree"    # J
    .param p10, "dalvikMax"    # J
    .param p12, "dalvikAllocated"    # J
    .param p14, "dalvikFree"    # J

    .line 3327
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p4

    move-wide/from16 v10, p6

    move-wide/from16 v8, p8

    move-wide/from16 v6, p10

    move-wide/from16 v4, p12

    move-wide/from16 v1, p14

    if-nez p3, :cond_2d6

    .line 3328
    const-wide v1, 0x10b00000003L

    invoke-virtual {v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3329
    .local v1, "nhToken":J
    const-wide v22, 0x10b00000001L

    const-string v3, "Native Heap"

    iget v0, v15, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move-wide/from16 v24, v1

    .end local v1    # "nhToken":J
    .local v24, "nhToken":J
    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    iget v2, v15, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v26, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v27, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v28, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v29, v1

    iget-boolean v1, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v30, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v31, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    iget v13, v15, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    move v12, v0

    move-object/from16 v0, p0

    move/from16 v17, v2

    move-wide/from16 v32, v24

    move/from16 v16, v26

    move/from16 v18, v27

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v30

    move/from16 v24, v31

    move/from16 v25, v1

    .end local v24    # "nhToken":J
    .local v32, "nhToken":J
    move-wide/from16 v1, v22

    move v4, v12

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move-wide v11, v10

    move/from16 v10, v21

    move/from16 v11, v24

    move/from16 v12, v25

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3335
    move-wide/from16 v12, p4

    const-wide v10, 0x10500000002L

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3336
    move-wide/from16 v8, p6

    const-wide v6, 0x10500000003L

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3337
    move-wide/from16 v4, p8

    const-wide v1, 0x10500000004L

    invoke-virtual {v14, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3338
    move-wide/from16 v1, v32

    .end local v32    # "nhToken":J
    .restart local v1    # "nhToken":J
    invoke-virtual {v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3340
    const-wide v6, 0x10b00000004L

    invoke-virtual {v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 3341
    .local v6, "dvToken":J
    const-wide v16, 0x10b00000001L

    const-string v3, "Dalvik Heap"

    iget v0, v15, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v10, v15, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v11, v15, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .end local v1    # "nhToken":J
    .restart local v32    # "nhToken":J
    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v2, v15, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move/from16 v18, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v19, v1

    iget-boolean v1, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v20, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v21, v1

    iget v1, v15, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    iget v13, v15, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    move v12, v0

    move-object/from16 v0, p0

    move/from16 v25, v1

    move/from16 v22, v19

    move/from16 v23, v20

    move/from16 v24, v21

    move/from16 v21, v2

    move/from16 v20, v18

    move-wide/from16 v18, v32

    .end local v32    # "nhToken":J
    .local v18, "nhToken":J
    move-wide/from16 v1, v16

    move v4, v12

    move v5, v10

    move-wide/from16 v42, v6

    .end local v6    # "dvToken":J
    .local v42, "dvToken":J
    move v6, v11

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    const-wide v11, 0x10500000002L

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v25

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3347
    move-wide/from16 v12, p10

    const-wide v10, 0x10500000002L

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3348
    move-wide/from16 v8, p12

    const-wide v6, 0x10500000003L

    invoke-virtual {v14, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3349
    move-wide/from16 v4, p14

    const-wide v1, 0x10500000004L

    invoke-virtual {v14, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3350
    move-wide/from16 v1, v42

    .end local v42    # "dvToken":J
    .local v1, "dvToken":J
    invoke-virtual {v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3352
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3353
    .local v0, "otherPss":I
    iget v3, v15, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3354
    .local v3, "otherSwappablePss":I
    iget v6, v15, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3355
    .local v6, "otherSharedDirty":I
    iget v7, v15, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3356
    .local v7, "otherPrivateDirty":I
    iget v10, v15, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3357
    .local v10, "otherSharedClean":I
    iget v11, v15, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3358
    .local v11, "otherPrivateClean":I
    move/from16 v16, v0

    .end local v0    # "otherPss":I
    .local v16, "otherPss":I
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3359
    .local v0, "otherSwappedOut":I
    move/from16 v17, v0

    .end local v0    # "otherSwappedOut":I
    .local v17, "otherSwappedOut":I
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3360
    .local v0, "otherSwappedOutPss":I
    move/from16 v20, v0

    .end local v0    # "otherSwappedOutPss":I
    .local v20, "otherSwappedOutPss":I
    iget v0, v15, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3362
    .local v0, "otherRss":I
    const/16 v21, 0x0

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v11, v21

    move/from16 v21, v0

    .end local v0    # "otherRss":I
    .end local v3    # "otherSwappablePss":I
    .end local v6    # "otherSharedDirty":I
    .end local v7    # "otherPrivateDirty":I
    .end local v10    # "otherSharedClean":I
    .local v11, "i":I
    .local v21, "otherRss":I
    .local v22, "otherSwappablePss":I
    .local v23, "otherSharedDirty":I
    .local v24, "otherPrivateDirty":I
    .local v25, "otherSharedClean":I
    .local v26, "otherPrivateClean":I
    :goto_136
    const/16 v0, 0x11

    if-ge v11, v0, :cond_1c0

    .line 3363
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v27

    .line 3364
    .local v27, "myPss":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    .line 3365
    .local v28, "mySwappablePss":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v29

    .line 3366
    .local v29, "mySharedDirty":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v30

    .line 3367
    .local v30, "myPrivateDirty":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v31

    .line 3368
    .local v31, "mySharedClean":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v32

    .line 3369
    .local v32, "myPrivateClean":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v33

    .line 3370
    .local v33, "mySwappedOut":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v40

    .line 3371
    .local v40, "mySwappedOutPss":I
    invoke-virtual {v15, v11}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v41

    .line 3372
    .local v41, "myRss":I
    if-nez v27, :cond_17b

    if-nez v29, :cond_17b

    if-nez v30, :cond_17b

    if-nez v31, :cond_17b

    if-nez v32, :cond_17b

    if-nez v41, :cond_17b

    .line 3374
    iget-boolean v0, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_171

    move/from16 v0, v40

    goto :goto_173

    :cond_171
    move/from16 v0, v33

    :goto_173
    if-eqz v0, :cond_176

    goto :goto_17b

    :cond_176
    move-wide/from16 v34, v1

    move/from16 v36, v11

    goto :goto_1b4

    .line 3375
    :cond_17b
    :goto_17b
    const-wide v6, 0x20b00000005L

    .line 3376
    invoke-static {v11}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v10, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3375
    move-object/from16 v0, p0

    move-wide/from16 v34, v1

    .end local v1    # "dvToken":J
    .local v34, "dvToken":J
    move-wide v1, v6

    move/from16 v4, v27

    move/from16 v5, v28

    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v8, v31

    move/from16 v9, v32

    move/from16 v36, v11

    .end local v11    # "i":I
    .local v36, "i":I
    move/from16 v11, v33

    move/from16 v12, v40

    move/from16 v13, v41

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3381
    sub-int v16, v16, v27

    .line 3382
    sub-int v22, v22, v28

    .line 3383
    sub-int v23, v23, v29

    .line 3384
    sub-int v24, v24, v30

    .line 3385
    sub-int v25, v25, v31

    .line 3386
    sub-int v26, v26, v32

    .line 3387
    sub-int v17, v17, v33

    .line 3388
    sub-int v20, v20, v40

    .line 3389
    sub-int v21, v21, v41

    .line 3362
    .end local v27    # "myPss":I
    .end local v28    # "mySwappablePss":I
    .end local v29    # "mySharedDirty":I
    .end local v30    # "myPrivateDirty":I
    .end local v31    # "mySharedClean":I
    .end local v32    # "myPrivateClean":I
    .end local v33    # "mySwappedOut":I
    .end local v40    # "mySwappedOutPss":I
    .end local v41    # "myRss":I
    :goto_1b4
    add-int/lit8 v11, v36, 0x1

    move-wide/from16 v12, p10

    move-wide/from16 v8, p12

    move-wide/from16 v4, p14

    move-wide/from16 v1, v34

    .end local v36    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_136

    .end local v34    # "dvToken":J
    .restart local v1    # "dvToken":J
    :cond_1c0
    move-wide/from16 v34, v1

    move/from16 v36, v11

    .line 3393
    .end local v1    # "dvToken":J
    .end local v11    # "i":I
    .restart local v34    # "dvToken":J
    const-wide v1, 0x10b00000006L

    const-string v3, "Unknown"

    iget-boolean v10, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move-object/from16 v0, p0

    move/from16 v4, v16

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v11, v17

    move/from16 v12, v20

    move/from16 v13, v21

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3397
    const-wide v0, 0x10b00000007L

    invoke-virtual {v14, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 3398
    .local v12, "tToken":J
    const-wide v1, 0x10b00000001L

    const-string v3, "TOTAL"

    .line 3399
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v5

    .line 3400
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v7

    .line 3401
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v9

    iget-boolean v10, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3402
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v11

    .line 3403
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v28

    .line 3398
    move-object/from16 v0, p0

    move-wide/from16 v44, v12

    .end local v12    # "tToken":J
    .local v44, "tToken":J
    move/from16 v12, v27

    move/from16 v13, v28

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3404
    add-long v0, p4, p10

    const-wide v12, 0x10500000002L

    invoke-virtual {v14, v12, v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3406
    add-long v0, p6, p12

    const-wide v10, 0x10500000003L

    invoke-virtual {v14, v10, v11, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3408
    add-long v0, p8, p14

    const-wide v8, 0x10500000004L

    invoke-virtual {v14, v8, v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3410
    move-wide/from16 v6, v44

    .end local v44    # "tToken":J
    .local v6, "tToken":J
    invoke-virtual {v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3412
    if-eqz p2, :cond_2d4

    .line 3413
    const/16 v0, 0x11

    move v5, v0

    .line 3414
    .local v5, "i":I
    :goto_24d
    const/16 v0, 0x20

    if-ge v5, v0, :cond_2cf

    .line 3416
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v27

    .line 3417
    .restart local v27    # "myPss":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    .line 3418
    .restart local v28    # "mySwappablePss":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v29

    .line 3419
    .restart local v29    # "mySharedDirty":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v30

    .line 3420
    .restart local v30    # "myPrivateDirty":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v31

    .line 3421
    .restart local v31    # "mySharedClean":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v32

    .line 3422
    .restart local v32    # "myPrivateClean":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v33

    .line 3423
    .restart local v33    # "mySwappedOut":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v36

    .line 3424
    .local v36, "mySwappedOutPss":I
    invoke-virtual {v15, v5}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v37

    .line 3425
    .local v37, "myRss":I
    if-nez v27, :cond_290

    if-nez v29, :cond_290

    if-nez v30, :cond_290

    if-nez v31, :cond_290

    if-nez v32, :cond_290

    .line 3427
    iget-boolean v0, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_286

    move/from16 v0, v36

    goto :goto_288

    :cond_286
    move/from16 v0, v33

    :goto_288
    if-eqz v0, :cond_28b

    goto :goto_290

    :cond_28b
    move/from16 v39, v5

    move-wide/from16 v40, v6

    goto :goto_2ba

    .line 3428
    :cond_290
    :goto_290
    const-wide v1, 0x20b00000008L

    .line 3429
    invoke-static {v5}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 3428
    move-object/from16 v0, p0

    move/from16 v38, v4

    move/from16 v4, v27

    move/from16 v39, v5

    .end local v5    # "i":I
    .local v39, "i":I
    move/from16 v5, v28

    move-wide/from16 v40, v6

    .end local v6    # "tToken":J
    .local v40, "tToken":J
    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v8, v31

    move/from16 v9, v32

    move/from16 v10, v38

    move/from16 v11, v33

    move/from16 v12, v36

    move/from16 v13, v37

    invoke-static/range {v0 .. v13}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V

    .line 3415
    .end local v27    # "myPss":I
    .end local v28    # "mySwappablePss":I
    .end local v29    # "mySharedDirty":I
    .end local v30    # "myPrivateDirty":I
    .end local v31    # "mySharedClean":I
    .end local v32    # "myPrivateClean":I
    .end local v33    # "mySwappedOut":I
    .end local v36    # "mySwappedOutPss":I
    .end local v37    # "myRss":I
    :goto_2ba
    add-int/lit8 v5, v39, 0x1

    move-wide/from16 v6, v40

    const-wide v8, 0x10500000004L

    const-wide v10, 0x10500000003L

    const-wide v12, 0x10500000002L

    .end local v39    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_24d

    .line 3414
    .end local v40    # "tToken":J
    .restart local v6    # "tToken":J
    :cond_2cf
    move/from16 v39, v5

    move-wide/from16 v40, v6

    .end local v5    # "i":I
    .end local v6    # "tToken":J
    .restart local v39    # "i":I
    .restart local v40    # "tToken":J
    goto :goto_2d6

    .line 3412
    .end local v39    # "i":I
    .end local v40    # "tToken":J
    .restart local v6    # "tToken":J
    :cond_2d4
    move-wide/from16 v40, v6

    .line 3438
    .end local v6    # "tToken":J
    .end local v16    # "otherPss":I
    .end local v17    # "otherSwappedOut":I
    .end local v18    # "nhToken":J
    .end local v20    # "otherSwappedOutPss":I
    .end local v21    # "otherRss":I
    .end local v22    # "otherSwappablePss":I
    .end local v23    # "otherSharedDirty":I
    .end local v24    # "otherPrivateDirty":I
    .end local v25    # "otherSharedClean":I
    .end local v26    # "otherPrivateClean":I
    .end local v34    # "dvToken":J
    :cond_2d6
    :goto_2d6
    const-wide v0, 0x10b00000009L

    invoke-virtual {v14, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3439
    .local v0, "asToken":J
    nop

    .line 3440
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v2

    .line 3439
    const-wide v3, 0x10500000001L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3441
    nop

    .line 3442
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v2

    .line 3441
    const-wide v3, 0x10500000002L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3443
    nop

    .line 3444
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v2

    .line 3443
    const-wide v3, 0x10500000003L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3445
    nop

    .line 3446
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v2

    .line 3445
    const-wide v3, 0x10500000004L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3447
    nop

    .line 3448
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v2

    .line 3447
    const-wide v3, 0x10500000005L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3449
    nop

    .line 3450
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v2

    .line 3449
    const-wide v3, 0x10500000006L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3451
    nop

    .line 3452
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v2

    .line 3451
    const-wide v3, 0x10500000007L

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3453
    iget-boolean v2, v15, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-wide v3, 0x10500000008L

    if-eqz v2, :cond_34c

    .line 3454
    nop

    .line 3455
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v2

    .line 3454
    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_354

    .line 3457
    :cond_34c
    nop

    .line 3458
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v2

    .line 3457
    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3460
    :goto_354
    nop

    .line 3461
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v2

    .line 3460
    const-wide v3, 0x1050000000aL

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3462
    nop

    .line 3463
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v2

    .line 3462
    const-wide v3, 0x1050000000bL

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3464
    nop

    .line 3465
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v2

    .line 3464
    const-wide v3, 0x1050000000cL

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3466
    nop

    .line 3467
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v2

    .line 3466
    const-wide v3, 0x1050000000dL

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3468
    nop

    .line 3469
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v2

    .line 3468
    const-wide v3, 0x1050000000eL

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3470
    nop

    .line 3471
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v2

    .line 3470
    const-wide v3, 0x1050000000fL

    invoke-virtual {v14, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3473
    invoke-virtual {v14, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3474
    return-void
.end method

.method public static dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .registers 63
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "checkin"    # Z
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;
    .param p8, "nativeMax"    # J
    .param p10, "nativeAllocated"    # J
    .param p12, "nativeFree"    # J
    .param p14, "dalvikMax"    # J
    .param p16, "dalvikAllocated"    # J
    .param p18, "dalvikFree"    # J

    .line 3000
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p8

    move-wide/from16 v4, p10

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-wide/from16 v10, p16

    move-wide/from16 v12, p18

    const/4 v14, 0x4

    if-eqz p2, :cond_204

    .line 3005
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3006
    move/from16 v15, p6

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3007
    move-object/from16 v15, p7

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3010
    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3011
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 3012
    const-string v14, "N/A,"

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3013
    add-long v12, v2, v8

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const/16 v12, 0x2c

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3016
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3017
    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3018
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3019
    add-long v2, v4, v10

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3022
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3023
    move-wide/from16 v2, p18

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3024
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3025
    add-long v4, v6, v2

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3028
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3029
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3030
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3031
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3034
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3035
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3036
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3037
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3040
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3041
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3042
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3043
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3046
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3047
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3048
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3049
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3052
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3053
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3054
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3055
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3058
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3059
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3060
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3061
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3064
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3065
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3066
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3067
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3070
    iget-boolean v4, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_18b

    .line 3071
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3072
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3073
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 3074
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_197

    .line 3076
    :cond_18b
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3078
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3079
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3083
    :goto_197
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_198
    const/16 v5, 0x11

    if-ge v4, v5, :cond_203

    .line 3084
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3085
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3086
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3087
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3088
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3089
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3090
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3091
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 3092
    iget-boolean v12, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v12, :cond_1fd

    .line 3093
    invoke-virtual {v1, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_200

    .line 3095
    :cond_1fd
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3083
    :goto_200
    add-int/lit8 v4, v4, 0x1

    goto :goto_198

    .line 3098
    .end local v4    # "i":I
    :cond_203
    return-void

    .line 3101
    :cond_204
    move-object/from16 v15, p7

    move-wide v2, v12

    const-string v4, " "

    const-string v5, ""

    if-nez p5, :cond_7da

    .line 3102
    const-string v12, "Private"

    const-string v13, "Heap"

    const/16 v16, 0xb

    const/16 v17, 0xa

    const-string v14, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const-string v15, "%13s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    const/16 v21, 0x7

    const/16 v22, 0x6

    const/16 v23, 0x5

    const/16 v24, 0x3

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-object/from16 v27, v4

    const/16 v28, 0x1

    if-eqz p3, :cond_370

    .line 3103
    const/16 v4, 0xc

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v5, v2, v26

    const-string v3, "Pss"

    aput-object v3, v2, v28

    const-string v3, "Pss"

    aput-object v3, v2, v25

    const-string v3, "Shared"

    aput-object v3, v2, v24

    const/4 v3, 0x4

    aput-object v12, v2, v3

    const-string v3, "Shared"

    aput-object v3, v2, v23

    aput-object v12, v2, v22

    .line 3104
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_24f

    const-string v3, "SwapPss"

    goto :goto_251

    :cond_24f
    const-string v3, "Swap"

    :goto_251
    aput-object v3, v2, v21

    const-string v3, "Rss"

    aput-object v3, v2, v20

    const/16 v3, 0x9

    aput-object v13, v2, v3

    aput-object v13, v2, v17

    aput-object v13, v2, v16

    .line 3103
    invoke-static {v0, v14, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3106
    const-string v30, ""

    const-string v31, "Total"

    const-string v32, "Clean"

    const-string v33, "Dirty"

    const-string v34, "Dirty"

    const-string v35, "Clean"

    const-string v36, "Clean"

    const-string v37, "Dirty"

    const-string v38, "Total"

    const-string v39, "Size"

    const-string v40, "Alloc"

    const-string v41, "Free"

    filled-new-array/range {v30 .. v41}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v14, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3109
    const-string v30, ""

    const-string v31, "------"

    const-string v32, "------"

    const-string v33, "------"

    const-string v34, "------"

    const-string v35, "------"

    const-string v36, "------"

    const-string v37, "------"

    const-string v38, "------"

    const-string v39, "------"

    const-string v40, "------"

    const-string v41, "------"

    filled-new-array/range {v30 .. v41}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v14, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3111
    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Native Heap"

    aput-object v2, v3, v26

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v28

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 3112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v25

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v24

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v23

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v22

    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_2e0

    .line 3115
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_2e2

    :cond_2e0
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3114
    :goto_2e2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v21

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v20

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v3, v4

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v17

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v16

    .line 3111
    invoke-static {v0, v14, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3117
    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Dalvik Heap"

    aput-object v2, v3, v26

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v28

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 3118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v25

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v24

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v23

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v22

    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_347

    .line 3121
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_349

    :cond_347
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3120
    :goto_349
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v21

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v20

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v3, v4

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v17

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v16

    .line 3117
    invoke-static {v0, v14, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_465

    .line 3124
    :cond_370
    const/16 v4, 0x9

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v5, v2, v26

    const-string v3, "Pss"

    aput-object v3, v2, v28

    aput-object v12, v2, v25

    aput-object v12, v2, v24

    .line 3125
    iget-boolean v3, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_385

    const-string v3, "SwapPss"

    goto :goto_387

    :cond_385
    const-string v3, "Swap"

    :goto_387
    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string v3, "Rss"

    aput-object v3, v2, v23

    aput-object v13, v2, v22

    aput-object v13, v2, v21

    aput-object v13, v2, v20

    .line 3124
    invoke-static {v0, v15, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3127
    const-string v30, ""

    const-string v31, "Total"

    const-string v32, "Dirty"

    const-string v33, "Clean"

    const-string v34, "Dirty"

    const-string v35, "Total"

    const-string v36, "Size"

    const-string v37, "Alloc"

    const-string v38, "Free"

    filled-new-array/range {v30 .. v38}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v15, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3129
    const-string v30, ""

    const-string v31, "------"

    const-string v32, "------"

    const-string v33, "------"

    const-string v34, "------"

    const-string v35, "------"

    const-string v36, "------"

    const-string v37, "------"

    const-string v38, "------"

    const-string v39, "------"

    filled-new-array/range {v30 .. v39}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v15, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3131
    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Native Heap"

    aput-object v2, v3, v26

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v28

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 3132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v25

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 3133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v24

    .line 3134
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_3f2

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_3f4

    .line 3135
    :cond_3f2
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 3134
    :goto_3f4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 3135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v23

    .line 3136
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v22

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v21

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v20

    .line 3131
    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3137
    const/16 v2, 0x9

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Dalvik Heap"

    aput-object v2, v3, v26

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v28

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 3138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v25

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 3139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v24

    .line 3140
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_43f

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_441

    .line 3141
    :cond_43f
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 3140
    :goto_441
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v3, v4

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 3141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v23

    .line 3142
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v22

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v21

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v20

    .line 3137
    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3145
    :goto_465
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 3146
    .local v2, "otherPss":I
    iget v3, v1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 3147
    .local v3, "otherSwappablePss":I
    iget v4, v1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 3148
    .local v4, "otherSharedDirty":I
    iget v12, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 3149
    .local v12, "otherPrivateDirty":I
    iget v13, v1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 3150
    .local v13, "otherSharedClean":I
    move/from16 v30, v2

    .end local v2    # "otherPss":I
    .local v30, "otherPss":I
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 3151
    .local v2, "otherPrivateClean":I
    move/from16 v31, v2

    .end local v2    # "otherPrivateClean":I
    .local v31, "otherPrivateClean":I
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 3152
    .local v2, "otherSwappedOut":I
    move/from16 v32, v2

    .end local v2    # "otherSwappedOut":I
    .local v32, "otherSwappedOut":I
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 3153
    .local v2, "otherSwappedOutPss":I
    move/from16 v33, v2

    .end local v2    # "otherSwappedOutPss":I
    .local v33, "otherSwappedOutPss":I
    iget v2, v1, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 3155
    .local v2, "otherRss":I
    const/16 v34, 0x0

    move/from16 v6, v34

    move/from16 v42, v3

    move v3, v2

    move/from16 v2, v30

    move/from16 v30, v13

    move v13, v12

    move v12, v4

    move/from16 v4, v42

    .local v2, "otherPss":I
    .local v3, "otherRss":I
    .local v4, "otherSwappablePss":I
    .local v6, "i":I
    .local v12, "otherSharedDirty":I
    .local v13, "otherPrivateDirty":I
    .local v30, "otherSharedClean":I
    :goto_48e
    const/16 v7, 0x11

    if-ge v6, v7, :cond_573

    .line 3156
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v7

    .line 3157
    .local v7, "myPss":I
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v34

    .line 3158
    .local v34, "mySwappablePss":I
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v35

    .line 3159
    .local v35, "mySharedDirty":I
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v36

    .line 3160
    .local v36, "myPrivateDirty":I
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v37

    .line 3161
    .local v37, "mySharedClean":I
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v38

    .line 3162
    .local v38, "myPrivateClean":I
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v39

    .line 3163
    .local v39, "mySwappedOut":I
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v40

    .line 3164
    .local v40, "mySwappedOutPss":I
    invoke-virtual {v1, v6}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v41

    .line 3165
    .local v41, "myRss":I
    if-nez v7, :cond_4cd

    if-nez v35, :cond_4cd

    if-nez v36, :cond_4cd

    if-nez v37, :cond_4cd

    if-nez v38, :cond_4cd

    if-nez v41, :cond_4cd

    .line 3167
    iget-boolean v10, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_4c9

    move/from16 v10, v40

    goto :goto_4cb

    :cond_4c9
    move/from16 v10, v39

    :goto_4cb
    if-eqz v10, :cond_56d

    .line 3168
    :cond_4cd
    if-eqz p3, :cond_520

    .line 3169
    const/16 v10, 0xc

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v26

    .line 3170
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v28

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v25

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v24

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x4

    aput-object v10, v11, v18

    .line 3171
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v23

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v22

    .line 3172
    iget-boolean v10, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_506

    move/from16 v10, v40

    goto :goto_508

    :cond_506
    move/from16 v10, v39

    :goto_508
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v21

    .line 3173
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v20

    const/16 v10, 0x9

    aput-object v5, v11, v10

    aput-object v5, v11, v17

    aput-object v5, v11, v16

    .line 3169
    invoke-static {v0, v14, v11}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_55c

    .line 3175
    :cond_520
    const/16 v10, 0x9

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v26

    .line 3176
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v28

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v25

    .line 3177
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v24

    .line 3178
    iget-boolean v10, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_543

    move/from16 v10, v40

    goto :goto_545

    :cond_543
    move/from16 v10, v39

    :goto_545
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x4

    aput-object v10, v11, v18

    .line 3179
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v23

    aput-object v5, v11, v22

    aput-object v5, v11, v21

    aput-object v5, v11, v20

    .line 3175
    invoke-static {v0, v15, v11}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3181
    :goto_55c
    sub-int/2addr v2, v7

    .line 3182
    sub-int v4, v4, v34

    .line 3183
    sub-int v12, v12, v35

    .line 3184
    sub-int v13, v13, v36

    .line 3185
    sub-int v30, v30, v37

    .line 3186
    sub-int v31, v31, v38

    .line 3187
    sub-int v32, v32, v39

    .line 3188
    sub-int v33, v33, v40

    .line 3189
    sub-int v3, v3, v41

    .line 3155
    .end local v7    # "myPss":I
    .end local v34    # "mySwappablePss":I
    .end local v35    # "mySharedDirty":I
    .end local v36    # "myPrivateDirty":I
    .end local v37    # "mySharedClean":I
    .end local v38    # "myPrivateClean":I
    .end local v39    # "mySwappedOut":I
    .end local v40    # "mySwappedOutPss":I
    .end local v41    # "myRss":I
    :cond_56d
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v10, p16

    goto/16 :goto_48e

    .line 3193
    .end local v6    # "i":I
    :cond_573
    if-eqz p3, :cond_643

    .line 3194
    const/16 v6, 0xc

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "Unknown"

    aput-object v6, v7, v26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v25

    .line 3195
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v24

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v7, v10

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v23

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v22

    .line 3196
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_5a9

    move/from16 v6, v33

    goto :goto_5ab

    :cond_5a9
    move/from16 v6, v32

    :goto_5ab
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v21

    .line 3197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v20

    const/16 v6, 0x9

    aput-object v5, v7, v6

    aput-object v5, v7, v17

    aput-object v5, v7, v16

    .line 3194
    invoke-static {v0, v14, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3198
    const/16 v6, 0xc

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "TOTAL"

    aput-object v6, v7, v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v28

    .line 3199
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v25

    .line 3200
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v7, v10

    .line 3201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v22

    .line 3202
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_610

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v6

    goto :goto_614

    .line 3203
    :cond_610
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v6

    .line 3202
    :goto_614
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v21

    .line 3203
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v20

    add-long v10, p8, v8

    .line 3204
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v10, 0x9

    aput-object v6, v7, v10

    add-long v10, p10, p16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v7, v17

    add-long v10, p12, p18

    .line 3205
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v7, v16

    .line 3198
    invoke-static {v0, v14, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6db

    .line 3207
    :cond_643
    const/16 v6, 0x9

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "Unknown"

    aput-object v6, v7, v26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v28

    .line 3208
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v25

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v24

    .line 3209
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_664

    move/from16 v6, v33

    goto :goto_666

    :cond_664
    move/from16 v6, v32

    :goto_666
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v7, v10

    .line 3210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v23

    aput-object v5, v7, v22

    aput-object v5, v7, v21

    aput-object v5, v7, v20

    .line 3207
    invoke-static {v0, v15, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3211
    const/16 v6, 0x9

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "TOTAL"

    aput-object v6, v7, v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v28

    .line 3212
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v25

    .line 3213
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v24

    .line 3214
    iget-boolean v6, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v6, :cond_6ab

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v6

    goto :goto_6af

    .line 3215
    :cond_6ab
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v6

    .line 3214
    :goto_6af
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v7, v10

    .line 3215
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v23

    add-long v10, p8, v8

    .line 3216
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v7, v22

    add-long v10, p10, p16

    .line 3217
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v7, v21

    add-long v10, p12, p18

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v7, v20

    .line 3211
    invoke-static {v0, v15, v7}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3220
    :goto_6db
    if-eqz p4, :cond_7d3

    .line 3221
    move-object/from16 v6, v27

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    const-string v7, " Dalvik Details"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3224
    const/16 v7, 0x11

    .line 3225
    .local v7, "i":I
    :goto_6e9
    const/16 v10, 0x20

    if-ge v7, v10, :cond_7ce

    .line 3226
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v10

    .line 3227
    .local v10, "myPss":I
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v11

    .line 3228
    .local v11, "mySwappablePss":I
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v27

    .line 3229
    .local v27, "mySharedDirty":I
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v34

    .line 3230
    .local v34, "myPrivateDirty":I
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v35

    .line 3231
    .local v35, "mySharedClean":I
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v36

    .line 3232
    .local v36, "myPrivateClean":I
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v37

    .line 3233
    .local v37, "mySwappedOut":I
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v38

    .line 3234
    .local v38, "mySwappedOutPss":I
    invoke-virtual {v1, v7}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v39

    .line 3235
    .local v39, "myRss":I
    if-nez v10, :cond_72f

    if-nez v27, :cond_72f

    if-nez v34, :cond_72f

    if-nez v35, :cond_72f

    if-nez v36, :cond_72f

    .line 3237
    move/from16 v40, v2

    .end local v2    # "otherPss":I
    .local v40, "otherPss":I
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_724

    move/from16 v2, v38

    goto :goto_726

    :cond_724
    move/from16 v2, v37

    :goto_726
    if-eqz v2, :cond_729

    goto :goto_731

    :cond_729
    move/from16 v19, v3

    const/16 v18, 0x4

    goto/16 :goto_7c6

    .line 3235
    .end local v40    # "otherPss":I
    .restart local v2    # "otherPss":I
    :cond_72f
    move/from16 v40, v2

    .line 3238
    .end local v2    # "otherPss":I
    .restart local v40    # "otherPss":I
    :goto_731
    if-eqz p3, :cond_788

    .line 3239
    move/from16 v19, v3

    const/16 v2, 0xc

    .end local v3    # "otherRss":I
    .local v19, "otherRss":I
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v41

    aput-object v41, v3, v26

    .line 3240
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v3, v28

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v3, v25

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v3, v24

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/16 v18, 0x4

    aput-object v41, v3, v18

    .line 3241
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v3, v23

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    aput-object v41, v3, v22

    .line 3242
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_76c

    move/from16 v2, v38

    goto :goto_76e

    :cond_76c
    move/from16 v2, v37

    :goto_76e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v21

    .line 3243
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v20

    const/16 v2, 0x9

    aput-object v5, v3, v2

    aput-object v5, v3, v17

    aput-object v5, v3, v16

    .line 3239
    invoke-static {v0, v14, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v18, 0x4

    goto :goto_7c6

    .line 3245
    .end local v19    # "otherRss":I
    .restart local v3    # "otherRss":I
    :cond_788
    move/from16 v19, v3

    const/16 v2, 0x9

    .end local v3    # "otherRss":I
    .restart local v19    # "otherRss":I
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v3, v26

    .line 3246
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v3, v28

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v3, v25

    .line 3247
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v3, v24

    .line 3248
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_7ad

    move/from16 v2, v38

    goto :goto_7af

    :cond_7ad
    move/from16 v2, v37

    :goto_7af
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v18, 0x4

    aput-object v2, v3, v18

    .line 3249
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v23

    aput-object v5, v3, v22

    aput-object v5, v3, v21

    aput-object v5, v3, v20

    .line 3245
    invoke-static {v0, v15, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3225
    .end local v10    # "myPss":I
    .end local v11    # "mySwappablePss":I
    .end local v27    # "mySharedDirty":I
    .end local v34    # "myPrivateDirty":I
    .end local v35    # "mySharedClean":I
    .end local v36    # "myPrivateClean":I
    .end local v37    # "mySwappedOut":I
    .end local v38    # "mySwappedOutPss":I
    .end local v39    # "myRss":I
    :goto_7c6
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    move/from16 v2, v40

    goto/16 :goto_6e9

    .end local v19    # "otherRss":I
    .end local v40    # "otherPss":I
    .restart local v2    # "otherPss":I
    .restart local v3    # "otherRss":I
    :cond_7ce
    move/from16 v40, v2

    move/from16 v19, v3

    .end local v2    # "otherPss":I
    .end local v3    # "otherRss":I
    .restart local v19    # "otherRss":I
    .restart local v40    # "otherPss":I
    goto :goto_7db

    .line 3220
    .end local v7    # "i":I
    .end local v19    # "otherRss":I
    .end local v40    # "otherPss":I
    .restart local v2    # "otherPss":I
    .restart local v3    # "otherRss":I
    :cond_7d3
    move/from16 v40, v2

    move/from16 v19, v3

    move-object/from16 v6, v27

    .end local v2    # "otherPss":I
    .end local v3    # "otherRss":I
    .restart local v19    # "otherRss":I
    .restart local v40    # "otherPss":I
    goto :goto_7db

    .line 3101
    .end local v4    # "otherSwappablePss":I
    .end local v12    # "otherSharedDirty":I
    .end local v13    # "otherPrivateDirty":I
    .end local v19    # "otherRss":I
    .end local v30    # "otherSharedClean":I
    .end local v31    # "otherPrivateClean":I
    .end local v32    # "otherSwappedOut":I
    .end local v33    # "otherSwappedOutPss":I
    .end local v40    # "otherPss":I
    :cond_7da
    move-object v6, v4

    .line 3256
    :goto_7db
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3257
    const-string v2, " App Summary"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3258
    const-string v2, "Pss(KB)"

    const-string v3, "Rss(KB)"

    filled-new-array {v5, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%21s %8s %21s %8s"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3259
    const-string v2, "------"

    const-string v3, "------"

    filled-new-array {v5, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%21s %8s %21s %8s"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3260
    nop

    .line 3261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Java Heap:"

    filled-new-array {v4, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 3260
    const-string v3, "%21s %8d %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3262
    nop

    .line 3263
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3264
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "Native Heap:"

    filled-new-array {v7, v2, v5, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 3262
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3265
    nop

    .line 3266
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "Code:"

    filled-new-array {v7, v2, v5, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 3265
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3267
    nop

    .line 3268
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "Stack:"

    filled-new-array {v7, v2, v5, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 3267
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3269
    nop

    .line 3270
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "Graphics:"

    filled-new-array {v7, v2, v5, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 3269
    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3271
    nop

    .line 3272
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Private Other:"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3271
    const-string v3, "%21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3273
    nop

    .line 3274
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "System:"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3273
    const-string v3, "%21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3275
    nop

    .line 3276
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryUnknownRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Unknown:"

    filled-new-array {v3, v5, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 3275
    const-string v3, "%21s %8s %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3277
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v2, :cond_8ec

    .line 3279
    const-string v10, "TOTAL PSS:"

    .line 3280
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "TOTAL RSS:"

    .line 3281
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "TOTAL SWAP PSS:"

    .line 3282
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array/range {v10 .. v15}, [Ljava/lang/Object;

    move-result-object v2

    .line 3279
    const-string v3, "%21s %8d %21s %8s %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_913

    .line 3284
    :cond_8ec
    const-string v10, "TOTAL PSS:"

    .line 3285
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "TOTAL RSS:"

    .line 3286
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "TOTAL SWAP (KB):"

    .line 3287
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array/range {v10 .. v15}, [Ljava/lang/Object;

    move-result-object v2

    .line 3284
    const-string v3, "%21s %8d %21s %8s %21s %8d"

    invoke-static {v0, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3289
    :goto_913
    return-void
.end method

.method private static dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZIII)V
    .registers 29
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "pss"    # I
    .param p5, "cleanPss"    # I
    .param p6, "sharedDirty"    # I
    .param p7, "privateDirty"    # I
    .param p8, "sharedClean"    # I
    .param p9, "privateClean"    # I
    .param p10, "hasSwappedOutPss"    # Z
    .param p11, "dirtySwap"    # I
    .param p12, "dirtySwapPss"    # I
    .param p13, "rss"    # I

    .line 3300
    move-object v0, p0

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3302
    .local v1, "token":J
    const-wide v3, 0x10900000001L

    move-object/from16 v5, p3

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3303
    const-wide v3, 0x10500000002L

    move/from16 v6, p4

    invoke-virtual {p0, v3, v4, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3304
    const-wide v3, 0x10500000003L

    move/from16 v7, p5

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3305
    const-wide v3, 0x10500000004L

    move/from16 v8, p6

    invoke-virtual {p0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3306
    const-wide v3, 0x10500000005L

    move/from16 v9, p7

    invoke-virtual {p0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3307
    const-wide v3, 0x10500000006L

    move/from16 v10, p8

    invoke-virtual {p0, v3, v4, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3308
    const-wide v3, 0x10500000007L

    move/from16 v11, p9

    invoke-virtual {p0, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3309
    if-eqz p10, :cond_5a

    .line 3310
    const-wide v3, 0x10500000009L

    move/from16 v12, p12

    invoke-virtual {p0, v3, v4, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move/from16 v13, p11

    goto :goto_66

    .line 3312
    :cond_5a
    move/from16 v12, p12

    const-wide v3, 0x10500000008L

    move/from16 v13, p11

    invoke-virtual {p0, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3314
    :goto_66
    const-wide v3, 0x1050000000aL

    move/from16 v14, p13

    invoke-virtual {p0, v3, v4, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3316
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3317
    return-void
.end method

.method private generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2100
    nop

    .line 2101
    invoke-static {p2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->getServiceClassNameFromExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 2102
    .local v0, "serviceClassName":Ljava/lang/String;
    if-nez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    .line 2103
    :cond_9
    invoke-static {v0}, Landroid/app/Service;->getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;

    move-result-object v1

    :goto_d
    nop

    .line 2104
    .local v1, "inner":Ljava/lang/Exception;
    new-instance v2, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    invoke-direct {v2, p1, v1}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 4584
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 4586
    .local v0, "agentName":Ljava/lang/String;
    if-nez v0, :cond_12

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    iget v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 4588
    :cond_10
    const-string v0, "android.app.backup.FullBackupAgent"

    .line 4590
    :cond_12
    return-object v0
.end method

.method private getBackupAgentsForUser(I)Landroid/util/ArrayMap;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation

    .line 4615
    iget-object v0, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 4616
    .local v0, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    if-nez v0, :cond_15

    .line 4617
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 4618
    iget-object v1, p0, Landroid/app/ActivityThread;->mBackupAgentsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4620
    :cond_15
    return-object v0
.end method

.method private getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;
    .registers 7
    .param p1, "auth"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 7375
    new-instance v0, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v0, p1, p2}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 7376
    .local v0, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v1, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 7377
    :try_start_8
    iget-object v2, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderKey;

    .line 7378
    .local v2, "lock":Landroid/app/ActivityThread$ProviderKey;
    if-nez v2, :cond_18

    .line 7379
    move-object v2, v0

    .line 7380
    iget-object v3, p0, Landroid/app/ActivityThread;->mGetProviderKeys:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7382
    :cond_18
    monitor-exit v1

    return-object v2

    .line 7383
    .end local v2    # "lock":Landroid/app/ActivityThread$ProviderKey;
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method private getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .registers 7
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "insInfo"    # Landroid/content/pm/InstrumentationInfo;

    .line 6692
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 6693
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 6696
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 6697
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6698
    .local v0, "secondaryIsa":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.dalvik.vm.isa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6699
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6700
    .local v1, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_38

    move-object v2, v0

    goto :goto_39

    :cond_38
    move-object v2, v1

    :goto_39
    move-object v0, v2

    .line 6702
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v2

    .line 6703
    .local v2, "runtimeIsa":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 6704
    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v3

    .line 6707
    .end local v0    # "secondaryIsa":Ljava/lang/String;
    .end local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v2    # "runtimeIsa":Ljava/lang/String;
    :cond_4b
    iget-object v0, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .registers 1

    .line 4410
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private static getOperationTypeFromBackupMode(I)I
    .registers 3
    .param p0, "backupMode"    # I

    .line 4569
    packed-switch p0, :pswitch_data_22

    .line 4577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid backup mode when initialising BackupAgent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4579
    const/4 v0, -0x1

    return v0

    .line 4572
    :pswitch_1d
    const/4 v0, 0x1

    return v0

    .line 4575
    :pswitch_1f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .registers 15
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z

    .line 2731
    nop

    .line 2732
    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v7

    .line 2731
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;
    .registers 23
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z
    .param p7, "isSdkSandbox"    # Z

    .line 2738
    move-object v9, p0

    move-object/from16 v10, p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v3

    :goto_14
    move v11, v0

    .line 2739
    .local v11, "differentUser":Z
    iget-object v12, v9, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v12

    .line 2741
    if-nez v11, :cond_35

    if-eqz p7, :cond_1d

    goto :goto_35

    .line 2744
    :cond_1d
    if-eqz p5, :cond_2a

    .line 2745
    :try_start_1f
    iget-object v0, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_36

    .line 2747
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2a
    iget-object v0, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_36

    .line 2743
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_35
    :goto_35
    const/4 v0, 0x0

    .line 2750
    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_36
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    goto :goto_43

    .line 2800
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_3f
    move-exception v0

    goto/16 :goto_f5

    .line 2750
    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_42
    const/4 v1, 0x0

    :goto_43
    move-object v13, v1

    .line 2752
    .local v13, "packageInfo":Landroid/app/LoadedApk;
    if-eqz v13, :cond_9a

    .line 2753
    invoke-static {v13, v10}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 2754
    invoke-virtual {v13}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    iget-wide v3, v10, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_73

    .line 2757
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo() called with an older ApplicationInfo than the cached version for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 2760
    :cond_73
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo() caused update to cached ApplicationInfo for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2763
    .local v1, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v10, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2764
    invoke-virtual {v13, v10, v1}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2768
    .end local v1    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_98
    :goto_98
    monitor-exit v12

    return-object v13

    .line 2779
    :cond_9a
    new-instance v14, Landroid/app/LoadedApk;

    if-eqz p5, :cond_a6

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a6

    move v7, v2

    goto :goto_a7

    :cond_a6
    move v7, v3

    :goto_a7
    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    move-object v1, v14

    .line 2784
    .end local v13    # "packageInfo":Landroid/app/LoadedApk;
    .local v1, "packageInfo":Landroid/app/LoadedApk;
    iget-boolean v2, v9, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v2, :cond_d3

    const-string v2, "android"

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 2785
    nop

    .line 2786
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2785
    invoke-virtual {v1, v10, v2}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2789
    :cond_d3
    if-nez v11, :cond_f3

    if-eqz p7, :cond_d8

    goto :goto_f3

    .line 2791
    :cond_d8
    if-eqz p5, :cond_e7

    .line 2792
    iget-object v2, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f3

    .line 2795
    :cond_e7
    iget-object v2, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    :cond_f3
    :goto_f3
    monitor-exit v12

    return-object v1

    .line 2800
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    :goto_f5
    monitor-exit v12
    :try_end_f6
    .catchall {:try_start_1f .. :try_end_f6} :catchall_3f

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 6

    .line 2573
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_56

    .line 2575
    :try_start_4
    const-string v0, "adapter.core.OHEnvironment"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2576
    .local v0, "envClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "isOHEnvironment"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 2577
    .local v1, "isOH":Ljava/lang/Boolean;
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2578
    const-string v3, "getPackageManagerAdapter"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2579
    .local v2, "adapter":Ljava/lang/Object;
    if-eqz v2, :cond_3c

    .line 2580
    move-object v3, v2

    check-cast v3, Landroid/content/pm/IPackageManager;

    sput-object v3, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2581
    sget-object v3, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_3d

    return-object v3

    .line 2587
    .end local v0    # "envClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "isOH":Ljava/lang/Boolean;
    .end local v2    # "adapter":Ljava/lang/Object;
    :cond_3c
    goto :goto_56

    .line 2584
    :catchall_3d
    move-exception v0

    .line 2585
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OH adapter init failed, falling back: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_56
    :goto_56
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_5d

    .line 2590
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0

    .line 2592
    :cond_5d
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2593
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2594
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method public static getPermissionManager()Landroid/permission/IPermissionManager;
    .registers 2

    .line 2599
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    if-eqz v0, :cond_7

    .line 2600
    sget-object v0, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v0

    .line 2602
    :cond_7
    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2603
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    .line 2604
    sget-object v1, Landroid/app/ActivityThread;->sPermissionManager:Landroid/permission/IPermissionManager;

    return-object v1
.end method

.method static handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    .registers 5
    .param p0, "agent"    # Ljava/lang/String;
    .param p1, "loadedApk"    # Landroid/app/LoadedApk;

    .line 4358
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 4359
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :goto_9
    invoke-static {p0, v1}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4360
    return-void

    .line 4362
    :cond_10
    if-eqz v1, :cond_15

    .line 4363
    invoke-static {p0, v0}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 4365
    :cond_15
    return-void
.end method

.method static handleAttachStartupAgents(Ljava/lang/String;)V
    .registers 8
    .param p0, "dataDir"    # Ljava/lang/String;

    .line 4369
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/app/ContextImpl;->getCodeCacheDirBeforeBind(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 4370
    .local v0, "codeCache":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 4371
    return-void

    .line 4373
    :cond_17
    const-string/jumbo v2, "startup_agents"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 4374
    .local v2, "startupPath":Ljava/nio/file/Path;
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 4375
    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_71

    .line 4376
    .local v1, "startupFiles":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_2a
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 4377
    .local v4, "p":Ljava/nio/file/Path;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4378
    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4377
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    :try_end_5d
    .catchall {:try_start_2a .. :try_end_5d} :catchall_64

    .line 4382
    .end local v4    # "p":Ljava/nio/file/Path;
    goto :goto_2e

    .line 4383
    :cond_5e
    if-eqz v1, :cond_70

    :try_start_60
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_71

    goto :goto_70

    .line 4375
    :catchall_64
    move-exception v3

    if-eqz v1, :cond_6f

    :try_start_67
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v4

    :try_start_6c
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "dataDir":Ljava/lang/String;
    :cond_6f
    :goto_6f
    throw v3
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_71

    .line 4387
    .end local v0    # "codeCache":Ljava/nio/file/Path;
    .end local v1    # "startupFiles":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v2    # "startupPath":Ljava/nio/file/Path;
    .restart local p0    # "dataDir":Ljava/lang/String;
    :cond_70
    :goto_70
    goto :goto_72

    .line 4385
    :catch_71
    move-exception v0

    .line 4388
    :goto_72
    return-void
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .registers 22
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 6713
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    .line 6715
    const-string v0, "debug.allocTracker.stackDepth"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6716
    .local v11, "property":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 6717
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ldalvik/system/VMDebug;->setAllocTrackerStackDepth(I)V

    .line 6719
    :cond_1a
    iget-boolean v0, v10, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    const/4 v12, 0x1

    if-eqz v0, :cond_22

    .line 6720
    invoke-static {v12}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->setRecentAllocationsTrackingEnabled(Z)V

    .line 6723
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v10, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    iget-wide v7, v10, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    invoke-static/range {v1 .. v8}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 6726
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    invoke-static {v0}, Landroid/app/AppCompatCallbacks;->install([J)V

    .line 6728
    invoke-static {}, Ldalvik/system/AppSpecializationHooks;->handleCompatChangesBeforeBindingApplication()V

    .line 6733
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->initZipPathValidatorCallback()V

    .line 6735
    iput-object v10, v9, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 6736
    iget-object v0, v9, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/app/ConfigurationController;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 6737
    iget-object v0, v9, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/app/ConfigurationController;->setCompatConfiguration(Landroid/content/res/Configuration;)V

    .line 6738
    iget-object v0, v9, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, v9, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6739
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object v0, v9, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 6741
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, v9, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 6742
    const/4 v0, 0x0

    .line 6743
    .local v0, "agent":Ljava/lang/String;
    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v1, :cond_a0

    .line 6744
    iget-object v1, v9, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v10, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v2, v2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 6745
    iget-object v1, v9, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v10, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v2, v2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v2, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 6746
    iget-object v1, v9, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v10, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v2, v2, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v2, v1, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 6747
    iget-object v1, v9, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v10, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v2, v2, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v2, v1, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 6748
    iget-object v1, v9, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v10, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v2, v2, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v2, v1, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    .line 6749
    iget-object v1, v9, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v10, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v2, v2, Landroid/app/ProfilerInfo;->clockType:I

    iput v2, v1, Landroid/app/ActivityThread$Profiler;->mClockType:I

    .line 6750
    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v1, v1, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v1, :cond_a0

    .line 6751
    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v1, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    move-object v13, v0

    goto :goto_a1

    .line 6756
    :cond_a0
    move-object v13, v0

    .end local v0    # "agent":Ljava/lang/String;
    .local v13, "agent":Ljava/lang/String;
    :goto_a1
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 6757
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6759
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 6757
    invoke-static {v0, v1, v2}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6760
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessPackageName(Ljava/lang/String;)V

    .line 6764
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessDataDirectory(Ljava/lang/String;)V

    .line 6766
    iget-object v0, v9, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_cc

    .line 6767
    iget-object v0, v9, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 6774
    :cond_cc
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_d9

    .line 6775
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 6779
    :cond_d9
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e3

    move v0, v12

    goto :goto_e4

    :cond_e3
    const/4 v0, 0x0

    :goto_e4
    invoke-static {v0}, Landroid/util/UtilConfig;->setThrowExceptionForUpperArrayOutOfBounds(Z)V

    .line 6782
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/os/Message;->updateCheckRecycle(I)V

    .line 6786
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/graphics/Compatibility;->setTargetSdkVersion(I)V

    .line 6794
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 6799
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 6803
    :try_start_102
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    invoke-static {v0}, Landroid/graphics/Typeface;->setSystemFontMap(Landroid/os/SharedMemory;)V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_107} :catch_108
    .catch Landroid/system/ErrnoException; {:try_start_102 .. :try_end_107} :catch_108

    .line 6807
    goto :goto_113

    .line 6804
    :catch_108
    move-exception v0

    .line 6805
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    const-string v2, "Failed to parse serialized system font map"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6806
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 6810
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_113
    iget-object v1, v9, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6816
    :try_start_116
    iget-object v0, v9, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v2, v10, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v3, v10, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v2, v3}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 6817
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, v9, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6820
    iget-object v0, v9, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->applyCompatConfiguration()Landroid/content/res/Configuration;

    .line 6821
    monitor-exit v1
    :try_end_12b
    .catchall {:try_start_116 .. :try_end_12b} :catchall_422

    .line 6823
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_131

    move v0, v12

    goto :goto_132

    :cond_131
    const/4 v0, 0x0

    :goto_132
    move/from16 v16, v0

    .line 6824
    .local v16, "isSdkSandbox":Z
    iget-object v2, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v9, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v10, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 6827
    if-eqz v16, :cond_151

    .line 6828
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    iget-object v2, v10, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk;->setSdkSandboxStorage(Ljava/lang/String;Ljava/lang/String;)V

    .line 6832
    :cond_151
    if-eqz v13, :cond_158

    .line 6833
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v13, v0}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 6839
    :cond_158
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_167

    .line 6841
    iput-boolean v12, v9, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 6842
    const/16 v0, 0xa0

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 6844
    :cond_167
    iget-object v0, v9, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 6848
    iget-object v0, v9, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v1, "time_12_24"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6849
    .local v1, "use24HourSetting":Ljava/lang/String;
    const/4 v0, 0x0

    .line 6850
    .local v0, "is24Hr":Ljava/lang/Boolean;
    if-eqz v1, :cond_18b

    .line 6851
    const-string v2, "24"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_187

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_189

    :cond_187
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_189
    move-object v0, v2

    goto :goto_18c

    .line 6850
    :cond_18b
    move-object v2, v0

    .line 6856
    .end local v0    # "is24Hr":Ljava/lang/Boolean;
    .local v2, "is24Hr":Ljava/lang/Boolean;
    :goto_18c
    invoke-static {v2}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 6858
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    .line 6860
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 6861
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 6864
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-eqz v0, :cond_1a6

    move v0, v12

    goto :goto_1a7

    :cond_1a6
    const/4 v0, 0x0

    :goto_1a7
    move v4, v0

    .line 6865
    .local v4, "isAppDebuggable":Z
    if-nez v4, :cond_1b5

    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_1b3

    goto :goto_1b5

    :cond_1b3
    const/4 v0, 0x0

    goto :goto_1b6

    :cond_1b5
    :goto_1b5
    move v0, v12

    :goto_1b6
    move v5, v0

    .line 6866
    .local v5, "isAppProfileable":Z
    invoke-static {v5}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 6867
    if-nez v5, :cond_1c0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1c7

    :cond_1c0
    iget-boolean v0, v10, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    if-eqz v0, :cond_1c7

    .line 6868
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 6872
    :cond_1c7
    if-nez v5, :cond_1cd

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1d0

    .line 6873
    :cond_1cd
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->nInitZygoteChildHeapProfiling()V

    .line 6877
    :cond_1d0
    if-nez v4, :cond_1d9

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1d7

    goto :goto_1d9

    :cond_1d7
    const/4 v0, 0x0

    goto :goto_1da

    :cond_1d9
    :goto_1d9
    move v0, v12

    :goto_1da
    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setDebuggingEnabled(Z)V

    .line 6878
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setPackageName(Ljava/lang/String;)V

    .line 6881
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/HardwareRenderer;->setContextForInit(Landroid/content/Context;)V

    .line 6882
    iget-boolean v0, v10, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    if-eqz v0, :cond_1f2

    .line 6883
    invoke-static {}, Landroid/graphics/HardwareRenderer;->setIsSystemOrPersistent()V

    .line 6889
    :cond_1f2
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1fc

    .line 6890
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    move-object v6, v0

    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    goto :goto_1fe

    .line 6892
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_1fc
    const/4 v0, 0x0

    move-object v6, v0

    .line 6895
    .local v6, "ii":Landroid/content/pm/InstrumentationInfo;
    :goto_1fe
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    .line 6896
    .local v7, "mgr":Landroid/app/IActivityManager;
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v9, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v8

    .line 6897
    .local v8, "appContext":Landroid/app/ContextImpl;
    iget-object v0, v9, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, v8}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 6900
    const-string v0, "Setup proxies"

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6906
    :try_start_214
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_21a
    .catchall {:try_start_214 .. :try_end_21a} :catchall_417

    .line 6907
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_237

    .line 6908
    :try_start_21c
    const-class v3, Landroid/net/ConnectivityManager;

    .line 6909
    invoke-virtual {v8, v3}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 6910
    .local v3, "cm":Landroid/net/ConnectivityManager;
    if-eqz v3, :cond_237

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V
    :try_end_22d
    .catchall {:try_start_21c .. :try_end_22d} :catchall_22e

    goto :goto_237

    .line 6913
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    :catchall_22e
    move-exception v0

    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_41e

    :cond_237
    :goto_237
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 6914
    nop

    .line 6916
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_253

    .line 6917
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v3

    .line 6919
    .local v3, "oldMask":I
    :try_start_245
    invoke-direct {v9, v8}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/content/Context;)V
    :try_end_248
    .catchall {:try_start_245 .. :try_end_248} :catchall_24d

    .line 6921
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 6922
    nop

    .line 6923
    .end local v3    # "oldMask":I
    goto :goto_256

    .line 6921
    .restart local v3    # "oldMask":I
    :catchall_24d
    move-exception v0

    move-object v12, v0

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 6922
    throw v12

    .line 6924
    .end local v3    # "oldMask":I
    :cond_253
    invoke-static {v12}, Landroid/graphics/HardwareRenderer;->setIsolatedProcess(Z)V

    .line 6930
    :goto_256
    const-string v0, "NetworkSecurityConfigProvider.install"

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6931
    invoke-static {v8}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    .line 6932
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 6937
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_26a

    .line 6938
    invoke-static {v8}, Landroid/net/TrafficStats;->init(Landroid/content/Context;)V

    .line 6942
    :cond_26a
    if-eqz v6, :cond_270

    .line 6943
    invoke-direct {v9, v6, v10, v8}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V

    goto :goto_27a

    .line 6945
    :cond_270
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 6946
    invoke-virtual {v0, v9}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    .line 6949
    :goto_27a
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-eqz v0, :cond_28b

    .line 6950
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    goto :goto_292

    .line 6954
    :cond_28b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    .line 6961
    :goto_292
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 6962
    .local v3, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v12

    .line 6964
    .local v12, "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget v0, v10, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-eqz v0, :cond_2af

    .line 6965
    iget v0, v10, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v14, 0x2

    if-ne v0, v14, :cond_2a7

    .line 6966
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->waitForDebugger(Landroid/app/ActivityThread$AppBindData;)V

    goto :goto_2af

    .line 6967
    :cond_2a7
    iget v0, v10, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v14, 0x3

    if-ne v0, v14, :cond_2af

    .line 6968
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->suspendAllAndSendVmStart(Landroid/app/ActivityThread$AppBindData;)V

    .line 6976
    :cond_2af
    :goto_2af
    :try_start_2af
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-boolean v15, v10, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    const/4 v14, 0x0

    invoke-virtual {v0, v15, v14}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v14, v0

    .line 6979
    .local v14, "app":Landroid/app/Application;
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    invoke-virtual {v14, v0}, Landroid/app/Application;->setAutofillOptions(Landroid/content/AutofillOptions;)V

    .line 6982
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    invoke-virtual {v14, v0}, Landroid/app/Application;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 6983
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0xa4

    invoke-virtual {v9, v15, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 6985
    iput-object v14, v9, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 6987
    monitor-enter p0
    :try_end_2cf
    .catchall {:try_start_2af .. :try_end_2cf} :catchall_3fa

    .line 6988
    :try_start_2cf
    iget-boolean v0, v9, Landroid/app/ActivityThread;->mUpdateHttpProxyOnBind:Z

    move v15, v0

    .line 6991
    .local v15, "updateHttpProxy":Z
    monitor-exit p0
    :try_end_2d3
    .catchall {:try_start_2cf .. :try_end_2d3} :catchall_3ed

    .line 6992
    if-eqz v15, :cond_2e2

    .line 6993
    :try_start_2d5
    invoke-static {v14}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V
    :try_end_2d8
    .catchall {:try_start_2d5 .. :try_end_2d8} :catchall_2d9

    goto :goto_2e2

    .line 7026
    .end local v14    # "app":Landroid/app/Application;
    .end local v15    # "updateHttpProxy":Z
    :catchall_2d9
    move-exception v0

    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_401

    .line 6998
    .restart local v14    # "app":Landroid/app/Application;
    .restart local v15    # "updateHttpProxy":Z
    :cond_2e2
    :goto_2e2
    :try_start_2e2
    iget-boolean v0, v10, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z
    :try_end_2e4
    .catchall {:try_start_2e2 .. :try_end_2e4} :catchall_3fa

    if-nez v0, :cond_2f3

    .line 6999
    :try_start_2e6
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2f3

    .line 7000
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-direct {v9, v14, v0}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_2f3
    .catchall {:try_start_2e6 .. :try_end_2f3} :catchall_2d9

    .line 7007
    :cond_2f3
    :try_start_2f3
    iget-object v0, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_2f5
    .catch Ljava/lang/Exception; {:try_start_2f3 .. :try_end_2f5} :catch_3bd
    .catchall {:try_start_2f3 .. :try_end_2f5} :catchall_3fa

    move-object/from16 v17, v1

    .end local v1    # "use24HourSetting":Ljava/lang/String;
    .local v17, "use24HourSetting":Ljava/lang/String;
    :try_start_2f7
    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_2fc
    .catch Ljava/lang/Exception; {:try_start_2f7 .. :try_end_2fc} :catch_3b7
    .catchall {:try_start_2f7 .. :try_end_2fc} :catchall_3b1

    .line 7013
    nop

    .line 7015
    :try_start_2fd
    iget-object v0, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v14}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_302
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_302} :catch_30a
    .catchall {:try_start_2fd .. :try_end_302} :catchall_303

    .line 7022
    goto :goto_313

    .line 7026
    .end local v14    # "app":Landroid/app/Application;
    .end local v15    # "updateHttpProxy":Z
    :catchall_303
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v5

    goto/16 :goto_401

    .line 7016
    .restart local v14    # "app":Landroid/app/Application;
    .restart local v15    # "updateHttpProxy":Z
    :catch_30a
    move-exception v0

    .line 7017
    .local v0, "e":Ljava/lang/Exception;
    :try_start_30b
    iget-object v1, v9, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v14, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1
    :try_end_311
    .catchall {:try_start_30b .. :try_end_311} :catchall_3b1

    if-eqz v1, :cond_37e

    .line 7026
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v15    # "updateHttpProxy":Z
    :goto_313
    iget-object v0, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_325

    .line 7027
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_328

    .line 7028
    :cond_325
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7033
    :cond_328
    invoke-static {v8}, Landroid/provider/FontsContract;->setApplicationContextForResources(Landroid/content/Context;)V

    .line 7034
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_36d

    .line 7037
    :try_start_331
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 7040
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15
    :try_end_33d
    .catch Landroid/os/RemoteException; {:try_start_331 .. :try_end_33d} :catch_363

    .line 7037
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .local v18, "isAppDebuggable":Z
    .local v19, "isAppProfileable":Z
    const-wide/16 v4, 0x80

    :try_start_343
    invoke-interface {v0, v1, v4, v5, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7041
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_360

    .line 7042
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "preloaded_fonts"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 7044
    .local v1, "preloadedFontsResource":I
    if-eqz v1, :cond_360

    .line 7045
    iget-object v4, v10, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v4}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->preloadFonts(I)V
    :try_end_360
    .catch Landroid/os/RemoteException; {:try_start_343 .. :try_end_360} :catch_361

    .line 7050
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "preloadedFontsResource":I
    :cond_360
    goto :goto_371

    .line 7048
    :catch_361
    move-exception v0

    goto :goto_368

    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .restart local v4    # "isAppDebuggable":Z
    .restart local v5    # "isAppProfileable":Z
    :catch_363
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v5

    .line 7049
    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    :goto_368
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7034
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .restart local v4    # "isAppDebuggable":Z
    .restart local v5    # "isAppProfileable":Z
    :cond_36d
    move/from16 v18, v4

    move/from16 v19, v5

    .line 7054
    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    :goto_371
    :try_start_371
    iget-wide v0, v9, Landroid/app/ActivityThread;->mStartSeq:J

    invoke-interface {v7, v0, v1}, Landroid/app/IActivityManager;->finishAttachApplication(J)V
    :try_end_376
    .catch Landroid/os/RemoteException; {:try_start_371 .. :try_end_376} :catch_378

    .line 7057
    nop

    .line 7058
    return-void

    .line 7055
    :catch_378
    move-exception v0

    .line 7056
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7018
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "isAppDebuggable":Z
    .restart local v5    # "isAppProfileable":Z
    .restart local v15    # "updateHttpProxy":Z
    :cond_37e
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    :try_start_382
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7019
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7020
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "is24Hr":Ljava/lang/Boolean;
    .end local v3    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v6    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v7    # "mgr":Landroid/app/IActivityManager;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v11    # "property":Ljava/lang/String;
    .end local v12    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v13    # "agent":Ljava/lang/String;
    .end local v16    # "isSdkSandbox":Z
    .end local v17    # "use24HourSetting":Ljava/lang/String;
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v1

    .line 7026
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v14    # "app":Landroid/app/Application;
    .end local v15    # "updateHttpProxy":Z
    .restart local v2    # "is24Hr":Ljava/lang/Boolean;
    .restart local v3    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v4    # "isAppDebuggable":Z
    .restart local v5    # "isAppProfileable":Z
    .restart local v6    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v7    # "mgr":Landroid/app/IActivityManager;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v11    # "property":Ljava/lang/String;
    .restart local v12    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v13    # "agent":Ljava/lang/String;
    .restart local v16    # "isSdkSandbox":Z
    .restart local v17    # "use24HourSetting":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_3b1
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    goto :goto_401

    .line 7009
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .restart local v4    # "isAppDebuggable":Z
    .restart local v5    # "isAppProfileable":Z
    .restart local v14    # "app":Landroid/app/Application;
    .restart local v15    # "updateHttpProxy":Z
    :catch_3b7
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    goto :goto_3c4

    .end local v17    # "use24HourSetting":Ljava/lang/String;
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .local v1, "use24HourSetting":Ljava/lang/String;
    .restart local v4    # "isAppDebuggable":Z
    .restart local v5    # "isAppProfileable":Z
    :catch_3bd
    move-exception v0

    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    .line 7010
    .end local v1    # "use24HourSetting":Ljava/lang/String;
    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "use24HourSetting":Ljava/lang/String;
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    :goto_3c4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7012
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "is24Hr":Ljava/lang/Boolean;
    .end local v3    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v6    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v7    # "mgr":Landroid/app/IActivityManager;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v11    # "property":Ljava/lang/String;
    .end local v12    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v13    # "agent":Ljava/lang/String;
    .end local v16    # "isSdkSandbox":Z
    .end local v17    # "use24HourSetting":Ljava/lang/String;
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v1
    :try_end_3ed
    .catchall {:try_start_382 .. :try_end_3ed} :catchall_3f6

    .line 6991
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v15    # "updateHttpProxy":Z
    .restart local v1    # "use24HourSetting":Ljava/lang/String;
    .restart local v2    # "is24Hr":Ljava/lang/Boolean;
    .restart local v3    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v4    # "isAppDebuggable":Z
    .restart local v5    # "isAppProfileable":Z
    .restart local v6    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v7    # "mgr":Landroid/app/IActivityManager;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v11    # "property":Ljava/lang/String;
    .restart local v12    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v13    # "agent":Ljava/lang/String;
    .restart local v16    # "isSdkSandbox":Z
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_3ed
    move-exception v0

    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v1    # "use24HourSetting":Ljava/lang/String;
    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .restart local v17    # "use24HourSetting":Ljava/lang/String;
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    :goto_3f4
    :try_start_3f4
    monitor-exit p0
    :try_end_3f5
    .catchall {:try_start_3f4 .. :try_end_3f5} :catchall_3f8

    .end local v2    # "is24Hr":Ljava/lang/Boolean;
    .end local v3    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v6    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v7    # "mgr":Landroid/app/IActivityManager;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v11    # "property":Ljava/lang/String;
    .end local v12    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v13    # "agent":Ljava/lang/String;
    .end local v16    # "isSdkSandbox":Z
    .end local v17    # "use24HourSetting":Ljava/lang/String;
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :try_start_3f5
    throw v0
    :try_end_3f6
    .catchall {:try_start_3f5 .. :try_end_3f6} :catchall_3f6

    .line 7026
    .end local v14    # "app":Landroid/app/Application;
    .restart local v2    # "is24Hr":Ljava/lang/Boolean;
    .restart local v3    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v6    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v7    # "mgr":Landroid/app/IActivityManager;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v11    # "property":Ljava/lang/String;
    .restart local v12    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v13    # "agent":Ljava/lang/String;
    .restart local v16    # "isSdkSandbox":Z
    .restart local v17    # "use24HourSetting":Ljava/lang/String;
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catchall_3f6
    move-exception v0

    goto :goto_401

    .line 6991
    .restart local v14    # "app":Landroid/app/Application;
    :catchall_3f8
    move-exception v0

    goto :goto_3f4

    .line 7026
    .end local v14    # "app":Landroid/app/Application;
    .end local v17    # "use24HourSetting":Ljava/lang/String;
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .restart local v1    # "use24HourSetting":Ljava/lang/String;
    .restart local v4    # "isAppDebuggable":Z
    .restart local v5    # "isAppProfileable":Z
    :catchall_3fa
    move-exception v0

    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v1    # "use24HourSetting":Ljava/lang/String;
    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .restart local v17    # "use24HourSetting":Ljava/lang/String;
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    :goto_401
    iget-object v1, v10, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1b

    if-lt v1, v4, :cond_413

    .line 7027
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_416

    .line 7028
    :cond_413
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7030
    :cond_416
    throw v0

    .line 6913
    .end local v3    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v12    # "writesAllowedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v17    # "use24HourSetting":Ljava/lang/String;
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    .restart local v1    # "use24HourSetting":Ljava/lang/String;
    .restart local v4    # "isAppDebuggable":Z
    .restart local v5    # "isAppProfileable":Z
    :catchall_417
    move-exception v0

    move-object/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v1    # "use24HourSetting":Ljava/lang/String;
    .end local v4    # "isAppDebuggable":Z
    .end local v5    # "isAppProfileable":Z
    .restart local v17    # "use24HourSetting":Ljava/lang/String;
    .restart local v18    # "isAppDebuggable":Z
    .restart local v19    # "isAppProfileable":Z
    :goto_41e
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 6914
    throw v0

    .line 6821
    .end local v2    # "is24Hr":Ljava/lang/Boolean;
    .end local v6    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v7    # "mgr":Landroid/app/IActivityManager;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v16    # "isSdkSandbox":Z
    .end local v17    # "use24HourSetting":Ljava/lang/String;
    .end local v18    # "isAppDebuggable":Z
    .end local v19    # "isAppProfileable":Z
    :catchall_422
    move-exception v0

    :try_start_423
    monitor-exit v1
    :try_end_424
    .catchall {:try_start_423 .. :try_end_424} :catchall_422

    throw v0
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 8
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 4687
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 4688
    .local v0, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 4691
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_98

    .line 4693
    :try_start_16
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4694
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 4695
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4694
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2e} :catch_5b

    .line 4697
    :try_start_2e
    iget-boolean v2, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v2, :cond_44

    .line 4698
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v2

    .line 4699
    .local v2, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 4701
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_53

    .line 4702
    :cond_44
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 4703
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_53} :catch_55
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_53} :catch_5b

    .line 4708
    :goto_53
    nop

    .line 4715
    goto :goto_98

    .line 4706
    :catch_55
    move-exception v2

    .line 4707
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_56
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v1    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    throw v3
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_5b

    .line 4709
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    :catch_5b
    move-exception v2

    .line 4710
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_98

    .line 4711
    :cond_65
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4713
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4717
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_98
    :goto_98
    return-void
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 14
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 4492
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4493
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 4492
    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4494
    .local v0, "requestedPackage":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_f8

    const-string v3, "ActivityThread"

    if-eq v1, v2, :cond_39

    .line 4495
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to instantiate non-matching package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_38} :catch_f8

    .line 4497
    return-void

    .line 4501
    .end local v0    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_39
    nop

    .line 4504
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4507
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4508
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 4509
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_4d

    .line 4510
    const-string v2, "Asked to create backup agent for nonexistent package"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    return-void

    .line 4514
    :cond_4d
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->getBackupAgentName(Landroid/app/ActivityThread$CreateBackupAgentData;)Ljava/lang/String;

    move-result-object v2

    .line 4517
    .local v2, "classname":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4518
    .local v4, "binder":Landroid/os/IBinder;
    :try_start_52
    iget v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v5}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 4519
    .local v5, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/backup/BackupAgent;

    .line 4520
    .local v6, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v6, :cond_65

    .line 4525
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v3
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_64} :catch_d0

    .end local v4    # "binder":Landroid/os/IBinder;
    .local v3, "binder":Landroid/os/IBinder;
    goto :goto_be

    .line 4530
    .end local v3    # "binder":Landroid/os/IBinder;
    .restart local v4    # "binder":Landroid/os/IBinder;
    :cond_65
    :try_start_65
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 4531
    .local v7, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v7, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/backup/BackupAgent;

    move-object v6, v8

    .line 4534
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v8

    .line 4535
    .local v8, "context":Landroid/app/ContextImpl;
    invoke-virtual {v8, v6}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 4536
    invoke-virtual {v6, v8}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 4538
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    iget v10, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupDestination:I

    iget v11, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 4539
    invoke-static {v11}, Landroid/app/ActivityThread;->getOperationTypeFromBackupMode(I)I

    move-result v11

    .line 4538
    invoke-virtual {v6, v9, v10, v11}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;II)V

    .line 4540
    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v9

    move-object v4, v9

    .line 4541
    invoke-virtual {v5, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_97} :catch_99

    .line 4552
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    .end local v8    # "context":Landroid/app/ContextImpl;
    move-object v3, v4

    goto :goto_be

    .line 4542
    :catch_99
    move-exception v7

    .line 4545
    .local v7, "e":Ljava/lang/Exception;
    :try_start_9a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Agent threw during creation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    iget v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x2

    if-eq v3, v8, :cond_bd

    iget v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_bb

    goto :goto_bd

    .line 4549
    :cond_bb
    nop

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    throw v7
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_bd} :catch_d0

    .line 4557
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    :cond_bd
    :goto_bd
    move-object v3, v4

    .end local v4    # "binder":Landroid/os/IBinder;
    .restart local v3    # "binder":Landroid/os/IBinder;
    :goto_be
    :try_start_be
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-interface {v4, v1, v3, v7}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c7} :catch_ca
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c7} :catch_d0

    .line 4560
    nop

    .line 4564
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .end local v6    # "agent":Landroid/app/backup/BackupAgent;
    nop

    .line 4565
    return-void

    .line 4558
    .restart local v3    # "binder":Landroid/os/IBinder;
    .restart local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .restart local v6    # "agent":Landroid/app/backup/BackupAgent;
    :catch_ca
    move-exception v4

    .line 4559
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_cb
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    throw v7
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d0} :catch_d0

    .line 4561
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    .end local v6    # "agent":Landroid/app/backup/BackupAgent;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "classname":Ljava/lang/String;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateBackupAgentData;
    :catch_d0
    move-exception v3

    .line 4562
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create BackupAgent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4563
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4499
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_f8
    move-exception v0

    .line 4500
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .registers 14
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .line 4627
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4629
    iget-object v0, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4630
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 4634
    .local v1, "service":Landroid/app/Service;
    :try_start_c
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v9

    .line 4637
    .local v9, "app":Landroid/app/Application;
    iget-object v2, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 4638
    iget-object v2, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/LoadedApk;->getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    .local v2, "cl":Ljava/lang/ClassLoader;
    goto :goto_26

    .line 4640
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    :cond_22
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 4642
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    :goto_26
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/ActivityThread$CreateServiceData;->intent:Landroid/content/Intent;

    .line 4643
    invoke-virtual {v4, v2, v5, v6}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v4

    move-object v1, v4

    .line 4644
    nop

    .line 4645
    invoke-virtual {v1, p0, v0}, Landroid/app/Service;->createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;

    move-result-object v4

    .line 4644
    invoke-static {v4}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v4

    .line 4646
    .local v4, "context":Landroid/app/ContextImpl;
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v5, :cond_4f

    .line 4647
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/ContextImpl;

    move-object v4, v5

    .line 4649
    :cond_4f
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v5, :cond_6b

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_6b

    .line 4650
    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->attributionTags:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 4651
    .local v5, "attributionTag":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/ContextImpl;

    move-object v4, v6

    move-object v11, v4

    goto :goto_6c

    .line 4655
    .end local v5    # "attributionTag":Ljava/lang/String;
    :cond_6b
    move-object v11, v4

    .end local v4    # "context":Landroid/app/ContextImpl;
    .local v11, "context":Landroid/app/ContextImpl;
    :goto_6c
    invoke-virtual {v11}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 4656
    invoke-virtual {v9}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v5

    new-array v6, v3, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/res/loader/ResourcesLoader;

    .line 4655
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 4658
    invoke-virtual {v11, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 4659
    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 4660
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    .line 4659
    move-object v4, v1

    move-object v5, v11

    move-object v6, p0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 4661
    invoke-virtual {v1}, Landroid/app/Service;->isUiContext()Z

    move-result v4

    if-nez v4, :cond_b3

    .line 4662
    const-class v4, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v11, v4}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/VirtualDeviceManager;

    .line 4663
    .local v4, "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    iget v5, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    if-eqz v5, :cond_ae

    .line 4664
    invoke-virtual {v4, v5}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 4665
    :cond_ae
    iget v5, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    invoke-virtual {v1, v5}, Landroid/app/Service;->updateDeviceId(I)V

    .line 4668
    .end local v4    # "vdm":Landroid/companion/virtual/VirtualDeviceManager;
    :cond_b3
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 4669
    iget-object v4, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4670
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c4} :catch_d5

    .line 4672
    :try_start_c4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-interface {v4, v5, v3, v3, v3}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_cd} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cd} :catch_d5

    .line 4676
    nop

    .line 4683
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v9    # "app":Landroid/app/Application;
    .end local v11    # "context":Landroid/app/ContextImpl;
    goto :goto_de

    .line 4674
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    .restart local v9    # "app":Landroid/app/Application;
    .restart local v11    # "context":Landroid/app/ContextImpl;
    :catch_cf
    move-exception v3

    .line 4675
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_d0
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v1    # "service":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$CreateServiceData;
    throw v4
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d5} :catch_d5

    .line 4677
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v9    # "app":Landroid/app/Application;
    .end local v11    # "context":Landroid/app/ContextImpl;
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v1    # "service":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$CreateServiceData;
    :catch_d5
    move-exception v2

    .line 4678
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 4684
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_de
    return-void

    .line 4679
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_df
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4681
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .registers 10
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .line 4597
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4598
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 4599
    .local v1, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->getBackupAgentsForUser(I)Landroid/util/ArrayMap;

    move-result-object v2

    .line 4600
    .local v2, "backupAgents":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/backup/BackupAgent;>;"
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/backup/BackupAgent;

    .line 4601
    .local v3, "agent":Landroid/app/backup/BackupAgent;
    const-string v4, "ActivityThread"

    if-eqz v3, :cond_3c

    .line 4603
    :try_start_18
    invoke-virtual {v3}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 4607
    goto :goto_38

    .line 4604
    :catch_1c
    move-exception v5

    .line 4605
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 4608
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_38
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 4610
    :cond_3c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to destroy unknown backup agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    :goto_52
    return-void
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 9
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4795
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4797
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4798
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_36

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_36

    .line 4799
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4800
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4801
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/app/Activity;->dumpInternal(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4802
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_40

    .line 4805
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_36
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4806
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4807
    nop

    .line 4808
    return-void

    .line 4805
    :catchall_40
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4806
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4807
    throw v1
.end method

.method private handleDumpGfxInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4750
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4752
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/ThreadedRenderer;->handleDumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_1b
    .catchall {:try_start_4 .. :try_end_f} :catchall_19

    .line 4756
    nop

    :goto_10
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4757
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4758
    goto :goto_25

    .line 4756
    :catchall_19
    move-exception v1

    goto :goto_26

    .line 4753
    :catch_1b
    move-exception v1

    .line 4754
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1c
    const-string v2, "ActivityThread"

    const-string v3, "Caught exception from dumpGfxInfo()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 4756
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_10

    .line 4759
    :goto_25
    return-void

    .line 4756
    :goto_26
    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4757
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4758
    throw v1
.end method

.method static handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V
    .registers 5
    .param p0, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    .line 6435
    const-string v0, "ActivityThread"

    iget-boolean v1, p0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    if-eqz v1, :cond_f

    .line 6436
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6437
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 6438
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6440
    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_11} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_11} :catch_44

    .line 6441
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_11
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_1f

    .line 6442
    iget-object v2, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    goto :goto_32

    .line 6443
    :cond_1f
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    if-eqz v2, :cond_2b

    .line 6444
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V

    goto :goto_32

    .line 6446
    :cond_2b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_38

    .line 6448
    :goto_32
    if-eqz v1, :cond_74

    :try_start_34
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_37} :catch_44

    goto :goto_74

    .line 6440
    :catchall_38
    move-exception v2

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v3

    :try_start_40
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "dhd":Landroid/app/ActivityThread$DumpHeapData;
    :cond_43
    :goto_43
    throw v2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_44} :catch_44

    .line 6455
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "dhd":Landroid/app/ActivityThread$DumpHeapData;
    :catch_44
    move-exception v1

    .line 6457
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Heap dumper threw a runtime exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 6448
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_4b
    move-exception v1

    .line 6449
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v2, :cond_6f

    .line 6450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed heap dump failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_74

    .line 6453
    :cond_6f
    const-string v2, "Failed to dump heap"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6458
    .end local v1    # "e":Ljava/io/IOException;
    :cond_74
    :goto_74
    nop

    .line 6460
    :goto_75
    :try_start_75
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7e} :catch_8a

    .line 6463
    nop

    .line 6464
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_89

    .line 6465
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 6467
    :cond_89
    return-void

    .line 6461
    :catch_8a
    move-exception v0

    .line 6462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4811
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4813
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4814
    .local v1, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_34

    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v2, :cond_34

    .line 4815
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4816
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4817
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4818
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3e

    .line 4821
    .end local v1    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_34
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4822
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4823
    nop

    .line 4824
    return-void

    .line 4821
    :catchall_3e
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4822
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4823
    throw v1
.end method

.method private handleDumpResources(Landroid/app/ActivityThread$DumpResourcesData;)V
    .registers 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpResourcesData;

    .line 4778
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4780
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4781
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4783
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/res/Resources;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4784
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 4785
    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    if-eqz v2, :cond_26

    .line 4786
    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_30

    .line 4789
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_26
    iget-object v1, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4790
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4791
    nop

    .line 4792
    return-void

    .line 4789
    :catchall_30
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4790
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4791
    throw v1
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .line 4762
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4764
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 4765
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_2e

    .line 4766
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 4767
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4768
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4769
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_38

    .line 4772
    .end local v1    # "s":Landroid/app/Service;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_2e
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4773
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4774
    nop

    .line 4775
    return-void

    .line 4772
    :catchall_38
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4773
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4774
    throw v1
.end method

.method private handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4172
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4173
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    .line 4174
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 4176
    :cond_f
    return-void
.end method

.method private handleFinishInstrumentationWithoutRestart()V
    .registers 2

    .line 7250
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    .line 7251
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 7252
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 7253
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 7254
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 7255
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 7256
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 7257
    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 7258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 7259
    return-void
.end method

.method private handleInstrumentWithoutRestart(Landroid/app/ActivityThread$AppBindData;)V
    .registers 8
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7147
    :try_start_0
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 7148
    iget-object v0, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7149
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    .line 7150
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    .line 7151
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 7152
    invoke-static {p0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v1

    .line 7154
    .local v1, "appContext":Landroid/app/ContextImpl;
    invoke-direct {p0, v0, p1, v1}, Landroid/app/ActivityThread;->initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_4f

    .line 7157
    :try_start_1c
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_25

    .line 7162
    nop

    .line 7166
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v1    # "appContext":Landroid/app/ContextImpl;
    goto :goto_57

    .line 7158
    .restart local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v1    # "appContext":Landroid/app/ContextImpl;
    :catch_25
    move-exception v2

    .line 7159
    .local v2, "e":Ljava/lang/Exception;
    :try_start_26
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7161
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    throw v3
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_4f} :catch_4f

    .line 7164
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v1    # "appContext":Landroid/app/ContextImpl;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$AppBindData;
    :catch_4f
    move-exception v0

    .line 7165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    const-string v2, "Error in handleInstrumentWithoutRestart"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method private handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 4335
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4336
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1e

    .line 4337
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4338
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    .line 4339
    if-nez p2, :cond_19

    .line 4340
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    goto :goto_1e

    .line 4342
    :cond_19
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    .line 4345
    :cond_1e
    :goto_1e
    return-void
.end method

.method private handlePerformDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 11
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 4133
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4134
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 4135
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    .line 4136
    .local v2, "lifecycleState":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_2a

    const/4 v3, 0x5

    if-lt v2, v3, :cond_16

    goto :goto_2a

    .line 4140
    :cond_16
    if-eqz p3, :cond_1a

    move-object v1, p3

    goto :goto_1c

    :cond_1a
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 4141
    .local v1, "nonNullArguments":Landroid/os/Bundle;
    :goto_1c
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4142
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;

    invoke-direct {v4, p5}, Landroid/app/ActivityThread$$ExternalSyntheticLambda4;-><init>(Landroid/os/RemoteCallback;)V

    .line 4141
    invoke-virtual {v3, p2, v1, p4, v4}, Landroid/app/Activity;->onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4143
    .end local v1    # "nonNullArguments":Landroid/os/Bundle;
    .end local v2    # "lifecycleState":I
    goto :goto_31

    .line 4137
    .restart local v2    # "lifecycleState":I
    :cond_2a
    :goto_2a
    invoke-virtual {p5, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4138
    return-void

    .line 4144
    .end local v2    # "lifecycleState":I
    :cond_2e
    invoke-virtual {p5, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4146
    :goto_31
    return-void
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .registers 14
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .line 4417
    const-string v0, ": "

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4419
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 4421
    .local v1, "component":Ljava/lang/String;
    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    .line 4423
    .local v2, "packageInfo":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 4429
    .local v3, "mgr":Landroid/app/IActivityManager;
    :try_start_1b
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v4

    .line 4430
    .local v4, "app":Landroid/app/Application;
    invoke-virtual {v4}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/ContextImpl;

    .line 4431
    .local v6, "context":Landroid/app/ContextImpl;
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v7, :cond_39

    .line 4432
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/ContextImpl;

    move-object v6, v7

    .line 4434
    :cond_39
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v7, :cond_53

    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_53

    .line 4435
    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->attributionTags:[Ljava/lang/String;

    aget-object v7, v7, v5

    .line 4436
    .local v7, "attributionTag":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/ContextImpl;

    move-object v6, v8

    .line 4438
    .end local v7    # "attributionTag":Ljava/lang/String;
    :cond_53
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 4439
    .local v7, "cl":Ljava/lang/ClassLoader;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4440
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 4441
    invoke-static {v9}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v9

    if-nez v9, :cond_6e

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-static {v9}, Landroid/app/ActivityThread;->isProtectedBroadcast(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_6f

    :cond_6e
    const/4 v5, 0x1

    .line 4442
    :cond_6f
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    .line 4440
    invoke-virtual {v8, v5, v9}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4443
    invoke-virtual {p1, v7}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4444
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v5

    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 4445
    invoke-virtual {v5, v7, v8, v9}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v5
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_87} :catch_e9

    .line 4453
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    .local v5, "receiver":Landroid/content/BroadcastReceiver;
    nop

    .line 4464
    const/4 v7, 0x0

    :try_start_89
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4465
    invoke-virtual {v5, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 4466
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v9, v10}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9c} :catch_a2
    .catchall {:try_start_89 .. :try_end_9c} :catchall_a0

    .line 4478
    invoke-virtual {v8, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_b3

    :catchall_a0
    move-exception v0

    goto :goto_e3

    .line 4468
    :catch_a2
    move-exception v8

    .line 4471
    .local v8, "e":Ljava/lang/Exception;
    :try_start_a3
    invoke-virtual {p1, v3}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 4472
    iget-object v9, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v9, v5, v8}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v9
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_a0

    if-eqz v9, :cond_be

    .line 4478
    .end local v8    # "e":Ljava/lang/Exception;
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4479
    :goto_b3
    nop

    .line 4481
    invoke-virtual {v5}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 4482
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 4484
    :cond_bd
    return-void

    .line 4473
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_be
    :try_start_be
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to start receiver "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4475
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "packageInfo":Landroid/app/LoadedApk;
    .end local v3    # "mgr":Landroid/app/IActivityManager;
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v6    # "context":Landroid/app/ContextImpl;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$ReceiverData;
    throw v9
    :try_end_e3
    .catchall {:try_start_be .. :try_end_e3} :catchall_a0

    .line 4478
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v1    # "component":Ljava/lang/String;
    .restart local v2    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v3    # "mgr":Landroid/app/IActivityManager;
    .restart local v4    # "app":Landroid/app/Application;
    .restart local v5    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v6    # "context":Landroid/app/ContextImpl;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$ReceiverData;
    :goto_e3
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4479
    throw v0

    .line 4446
    .end local v4    # "app":Landroid/app/Application;
    .end local v5    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v6    # "context":Landroid/app/ContextImpl;
    :catch_e9
    move-exception v4

    .line 4449
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v3}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 4450
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate receiver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4452
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V
    .registers 23
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "configChanges"    # I
    .param p5, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p6, "startsNotResumed"    # Z
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/servertransaction/PendingTransactionActions;",
            "Z",
            "Landroid/content/res/Configuration;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5931
    .local p3, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p4, "pendingIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v11, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 5933
    .local v11, "customIntent":Landroid/content/Intent;
    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_15

    .line 5934
    invoke-direct {p0, p1, v12, v10, v13}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 5936
    :cond_15
    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v0, :cond_1d

    .line 5937
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v10}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5940
    :cond_1d
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V

    .line 5942
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5943
    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 5944
    iput-boolean v12, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 5946
    if-eqz v8, :cond_3c

    .line 5947
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v0, :cond_37

    .line 5948
    iput-object v8, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_3c

    .line 5950
    :cond_37
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5953
    :cond_3c
    :goto_3c
    if-eqz v9, :cond_4a

    .line 5954
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v0, :cond_45

    .line 5955
    iput-object v9, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_4a

    .line 5957
    :cond_45
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5960
    :cond_4a
    :goto_4a
    move/from16 v0, p6

    iput-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 5961
    move-object/from16 v1, p7

    iput-object v1, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5963
    iget v2, v6, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    move-object/from16 v3, p5

    invoke-virtual {p0, p1, v3, v2, v11}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;

    .line 5964
    return-void
.end method

.method private handleRequestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 19
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .param p5, "retryCount"    # I

    .line 4075
    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p4

    iget-object v0, v7, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4076
    .local v10, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    const-string v1, "ActivityThread"

    if-nez v10, :cond_2d

    .line 4077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestDirectActions(): no activity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4079
    return-void

    .line 4081
    :cond_2d
    invoke-virtual {v10}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v11

    .line 4082
    .local v11, "lifecycleState":I
    const/4 v2, 0x2

    const-string v3, "): wrong lifecycle: "

    const-string/jumbo v4, "requestDirectActions("

    if-ge v11, v2, :cond_79

    .line 4084
    if-lez p5, :cond_59

    .line 4085
    iget-object v12, v7, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda1;-><init>()V

    add-int/lit8 v1, p5, -0x1

    .line 4088
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4086
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4085
    const-wide/16 v1, 0xc8

    invoke-virtual {v12, v0, v1, v2}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4089
    return-void

    .line 4091
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4093
    return-void

    .line 4095
    :cond_79
    const/4 v2, 0x5

    if-lt v11, v2, :cond_9c

    .line 4096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    invoke-virtual {v9, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4098
    return-void

    .line 4100
    :cond_9c
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_b5

    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 4101
    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4102
    invoke-interface {p2}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_b3

    goto :goto_b5

    :cond_b3
    move-object v5, p2

    goto :goto_d4

    .line 4103
    :cond_b5
    :goto_b5
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_c2

    .line 4104
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->destroy()V

    .line 4106
    :cond_c2
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/app/VoiceInteractor;

    iget-object v2, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v5, p2

    invoke-direct {v1, p2, v2, v3, v4}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v1, v0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 4109
    :goto_d4
    iget-object v0, v10, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;

    invoke-direct {v1, v10, v9}, Landroid/app/ActivityThread$$ExternalSyntheticLambda2;-><init>(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;)V

    move-object/from16 v2, p3

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    .line 4126
    return-void
.end method

.method private handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 7860
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "main"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 7861
    .local v0, "main":Ljava/lang/reflect/Method;
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_1b} :catch_20

    .line 7864
    nop

    .line 7866
    .end local v0    # "main":Ljava/lang/reflect/Method;
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 7867
    return-void

    .line 7862
    :catch_20
    move-exception v0

    .line 7863
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "runIsolatedEntryPoint failed"

    invoke-direct {v1, v2, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .registers 9
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .line 4827
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 4828
    .local v0, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 4829
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_9c

    .line 4831
    :try_start_16
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v2, :cond_32

    .line 4832
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4833
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 4834
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4833
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4837
    :cond_32
    iget-boolean v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v2, :cond_41

    .line 4838
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .local v2, "res":I
    goto :goto_48

    .line 4840
    .end local v2    # "res":I
    :cond_41
    iget-object v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 4841
    const/16 v2, 0x3e8

    .line 4844
    .restart local v2    # "res":I
    :goto_48
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4b} :catch_5f

    .line 4847
    :try_start_4b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    const/4 v6, 0x1

    invoke-interface {v3, v4, v6, v5, v2}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_59
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_5f

    .line 4851
    nop

    .line 4858
    .end local v2    # "res":I
    goto :goto_9c

    .line 4849
    .restart local v2    # "res":I
    :catch_59
    move-exception v3

    .line 4850
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5a
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v1    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$ServiceArgsData;
    throw v4
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_5f

    .line 4852
    .end local v2    # "res":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$ServiceArgsData;
    :catch_5f
    move-exception v2

    .line 4853
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_69

    goto :goto_9c

    .line 4854
    :cond_69
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4856
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4860
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9c
    :goto_9c
    return-void
.end method

.method private handleSetContentCaptureOptionsCallback(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 7116
    iget-object v0, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    if-eqz v0, :cond_5

    .line 7117
    return-void

    .line 7120
    :cond_5
    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7121
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_e

    .line 7122
    return-void

    .line 7125
    :cond_e
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    .line 7126
    .local v1, "service":Landroid/view/contentcapture/IContentCaptureManager;
    new-instance v2, Landroid/app/ActivityThread$2;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 7136
    :try_start_19
    invoke-interface {v1, p1, v2}, Landroid/view/contentcapture/IContentCaptureManager;->registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 7142
    goto :goto_3a

    .line 7138
    :catch_1d
    move-exception v2

    .line 7139
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerContentCaptureOptionsCallback() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityThread"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7141
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/ActivityThread;->mContentCaptureOptionsCallback:Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;

    .line 7143
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 5477
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5478
    :try_start_3
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 5479
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 5480
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 5481
    return-void

    .line 5479
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method private handleStartBinderTracking()V
    .registers 1

    .line 4179
    invoke-static {}, Landroid/os/Binder;->enableStackTracking()V

    .line 4180
    return-void
.end method

.method private handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 4184
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableStackTracking()V

    .line 4185
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_16

    .line 4187
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4188
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4189
    nop

    .line 4190
    return-void

    .line 4187
    :catchall_16
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4188
    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/TransactionTracker;->clearTraces()V

    .line 4189
    throw v0
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4863
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4864
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 4865
    .local v0, "s":Landroid/app/Service;
    const-string v1, "ActivityThread"

    if-eqz v0, :cond_85

    .line 4868
    :try_start_11
    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 4869
    invoke-virtual {v0}, Landroid/app/Service;->detachAndCleanUp()V

    .line 4870
    invoke-virtual {v0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 4871
    .local v2, "context":Landroid/content/Context;
    instance-of v3, v2, Landroid/app/ContextImpl;

    if-eqz v3, :cond_2b

    .line 4872
    invoke-virtual {v0}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 4873
    .local v3, "who":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Landroid/app/ContextImpl;

    const-string v5, "Service"

    invoke-virtual {v4, v3, v5}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 4876
    .end local v3    # "who":Ljava/lang/String;
    :cond_2b
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_3e

    .line 4879
    :try_start_2e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5, v5}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_37} :catch_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_3e

    .line 4883
    goto :goto_5d

    .line 4881
    :catch_38
    move-exception v3

    .line 4882
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_39
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_3e

    .line 4884
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catch_3e
    move-exception v2

    .line 4885
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v0, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 4890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopService: exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4891
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5d
    goto :goto_a1

    .line 4886
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_5e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4888
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4893
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopService: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4896
    :goto_a1
    return-void
.end method

.method private handleTimeoutService(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I

    .line 4899
    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 4900
    .local v0, "s":Landroid/app/Service;
    const-string v1, "ActivityThread"

    if-eqz v0, :cond_57

    .line 4908
    :try_start_c
    invoke-virtual {v0, p2}, Landroid/app/Service;->callOnTimeout(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_10

    .line 4916
    :goto_f
    goto :goto_73

    .line 4909
    :catch_10
    move-exception v2

    .line 4910
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v0, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 4915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimeoutService: exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_f

    .line 4911
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call onTimeout on service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4913
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4918
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTimeoutService: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4920
    :goto_73
    return-void
.end method

.method private handleTrimMemory(I)V
    .registers 8
    .param p1, "level"    # I

    .line 6600
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimMemory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6606
    :cond_1f
    const/16 v2, 0x50

    if-lt p1, v2, :cond_26

    .line 6607
    :try_start_23
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->onTrimMemory()V

    .line 6610
    :cond_26
    nop

    .line 6611
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 6613
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6614
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    if-ge v4, v3, :cond_3f

    .line 6615
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks2;

    invoke-interface {v5, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_6d

    .line 6614
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 6618
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_3f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6619
    nop

    .line 6621
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 6623
    const-string v0, "debug.am.run_gc_trim_level"

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, p1, :cond_5e

    .line 6624
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 6625
    const-string/jumbo v0, "tm"

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->doGcIfNeeded(Ljava/lang/String;)V

    .line 6627
    :cond_5e
    const-string v0, "debug.am.run_mallopt_trim_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt v0, p1, :cond_6c

    .line 6629
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unschedulePurgeIdler()V

    .line 6630
    invoke-direct {p0}, Landroid/app/ActivityThread;->purgePendingResources()V

    .line 6632
    :cond_6c
    return-void

    .line 6618
    :catchall_6d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6619
    throw v2
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .registers 8
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .line 4720
    iget-object v0, p0, Landroid/app/ActivityThread;->mServicesData:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    .line 4721
    .local v0, "createData":Landroid/app/ActivityThread$CreateServiceData;
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 4722
    .local v1, "s":Landroid/app/Service;
    if-eqz v1, :cond_91

    .line 4724
    :try_start_16
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4725
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    .line 4726
    invoke-virtual {v1}, Landroid/app/Service;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 4725
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 4727
    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_54

    .line 4729
    .local v2, "doRebind":Z
    if-eqz v2, :cond_42

    .line 4730
    :try_start_36
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v2}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    goto :goto_4c

    .line 4733
    :cond_42
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v5, v5}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_4c} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_54

    .line 4738
    :goto_4c
    nop

    .line 4745
    .end local v2    # "doRebind":Z
    goto :goto_91

    .line 4736
    .restart local v2    # "doRebind":Z
    :catch_4e
    move-exception v3

    .line 4737
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4f
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .end local v1    # "s":Landroid/app/Service;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    throw v4
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_54

    .line 4739
    .end local v2    # "doRebind":Z
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "createData":Landroid/app/ActivityThread$CreateServiceData;
    .restart local v1    # "s":Landroid/app/Service;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "data":Landroid/app/ActivityThread$BindServiceData;
    :catch_54
    move-exception v2

    .line 4740
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_91

    .line 4741
    :cond_5e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4743
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4747
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_91
    :goto_91
    return-void
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .line 5513
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 5514
    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5515
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_12

    .line 5516
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 5518
    :cond_12
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 5519
    if-eqz v0, :cond_20

    .line 5520
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 5522
    :cond_20
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/CompatibilityInfo;)V

    .line 5523
    return-void
.end method

.method private handleWindowingModeChangeIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newConfiguration"    # Landroid/content/res/Configuration;

    .line 6231
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6232
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 6233
    .local v1, "newWindowingMode":I
    iget v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    .line 6234
    .local v2, "oldWindowingMode":I
    if-ne v2, v1, :cond_d

    return-void

    .line 6236
    :cond_d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_15

    .line 6237
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    goto :goto_1b

    .line 6238
    :cond_15
    if-ne v2, v3, :cond_1b

    .line 6239
    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    .line 6241
    :cond_1b
    :goto_1b
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v3

    .line 6243
    .local v3, "wasInMultiWindowMode":Z
    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    .line 6245
    .local v4, "nowInMultiWindowMode":Z
    if-eq v3, v4, :cond_28

    .line 6246
    invoke-virtual {v0, v4, p2}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 6248
    :cond_28
    iput v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    .line 6249
    return-void
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .registers 7
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;
    .param p2, "stable"    # Z

    .line 7387
    const/16 v0, 0x83

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2b

    .line 7388
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 7389
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v3, v2, :cond_4d

    .line 7392
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_1c

    .line 7396
    const/4 v3, -0x1

    .line 7402
    .local v3, "unstableDelta":I
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7405
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1d

    .line 7407
    .end local v3    # "unstableDelta":I
    :cond_1c
    const/4 v3, 0x0

    .line 7415
    .restart local v3    # "unstableDelta":I
    :goto_1d
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v1, v1, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_29

    .line 7419
    goto :goto_2a

    .line 7417
    :catch_29
    move-exception v0

    .line 7420
    .end local v3    # "unstableDelta":I
    :goto_2a
    goto :goto_4d

    .line 7422
    :cond_2b
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 7423
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v3, v2, :cond_4d

    .line 7425
    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_40

    .line 7434
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7435
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_4d

    .line 7444
    :cond_40
    :try_start_40
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v3, v1, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4b} :catch_4c

    .line 7448
    goto :goto_4d

    .line 7446
    :catch_4c
    move-exception v0

    .line 7452
    :cond_4d
    :goto_4d
    return-void
.end method

.method private initInstrumentation(Landroid/content/pm/InstrumentationInfo;Landroid/app/ActivityThread$AppBindData;Landroid/app/ContextImpl;)V
    .registers 14
    .param p1, "ii"    # Landroid/content/pm/InstrumentationInfo;
    .param p2, "data"    # Landroid/app/ActivityThread$AppBindData;
    .param p3, "appContext"    # Landroid/app/ContextImpl;

    .line 7207
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 7208
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 7207
    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 7211
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    goto :goto_14

    .line 7209
    .end local v0    # "instrApp":Landroid/content/pm/ApplicationInfo;
    :catch_11
    move-exception v0

    .line 7210
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 7212
    .local v0, "instrApp":Landroid/content/pm/ApplicationInfo;
    :goto_14
    if-nez v0, :cond_1c

    .line 7213
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    move-object v0, v1

    .line 7215
    :cond_1c
    invoke-virtual {p1, v0}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    .line 7216
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 7217
    iget-object v3, p2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 7218
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 7217
    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v1

    .line 7223
    .local v1, "pi":Landroid/app/LoadedApk;
    nop

    .line 7224
    invoke-virtual {p3}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7223
    invoke-static {p0, v1, v2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Ljava/lang/String;)Landroid/app/ContextImpl;

    move-result-object v2

    .line 7227
    .local v2, "instrContext":Landroid/app/ContextImpl;
    :try_start_3e
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 7228
    .local v3, "cl":Ljava/lang/ClassLoader;
    iget-object v4, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 7229
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Instrumentation;

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_54} :catch_99

    .line 7234
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    nop

    .line 7236
    new-instance v7, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7237
    .local v7, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v9, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object v4, p0

    move-object v5, v2

    move-object v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 7240
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v3, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v3, :cond_98

    iget-boolean v3, p1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v3, :cond_98

    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v3, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_98

    .line 7242
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 7243
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v4, v4, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7244
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 7245
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x800000

    invoke-static {v4, v5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 7247
    .end local v3    # "file":Ljava/io/File;
    :cond_98
    return-void

    .line 7230
    .end local v7    # "component":Landroid/content/ComponentName;
    :catch_99
    move-exception v3

    .line 7231
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate instrumentation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 7233
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private initZipPathValidatorCallback()V
    .registers 3

    .line 7108
    const-wide/32 v0, 0xe778e5a

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7109
    new-instance v0, Lcom/android/internal/os/SafeZipPathValidatorCallback;

    invoke-direct {v0}, Lcom/android/internal/os/SafeZipPathValidatorCallback;-><init>()V

    invoke-static {v0}, Ldalvik/system/ZipPathValidator;->setCallback(Ldalvik/system/ZipPathValidator$Callback;)V

    goto :goto_15

    .line 7111
    :cond_12
    invoke-static {}, Ldalvik/system/ZipPathValidator;->clearCallback()V

    .line 7113
    :goto_15
    return-void
.end method

.method public static initializeMainlineModules()V
    .registers 1

    .line 8204
    new-instance v0, Landroid/os/TelephonyServiceManager;

    invoke-direct {v0}, Landroid/os/TelephonyServiceManager;-><init>()V

    invoke-static {v0}, Landroid/telephony/TelephonyFrameworkInitializer;->setTelephonyServiceManager(Landroid/os/TelephonyServiceManager;)V

    .line 8205
    new-instance v0, Landroid/os/StatsServiceManager;

    invoke-direct {v0}, Landroid/os/StatsServiceManager;-><init>()V

    invoke-static {v0}, Landroid/os/StatsFrameworkInitializer;->setStatsServiceManager(Landroid/os/StatsServiceManager;)V

    .line 8206
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkPlatformInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 8207
    new-instance v0, Landroid/media/MediaServiceManager;

    invoke-direct {v0}, Landroid/media/MediaServiceManager;-><init>()V

    invoke-static {v0}, Landroid/media/MediaFrameworkInitializer;->setMediaServiceManager(Landroid/media/MediaServiceManager;)V

    .line 8208
    new-instance v0, Landroid/os/BluetoothServiceManager;

    invoke-direct {v0}, Landroid/os/BluetoothServiceManager;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBluetoothServiceManager(Landroid/os/BluetoothServiceManager;)V

    .line 8209
    new-instance v0, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/ActivityThread$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Landroid/bluetooth/BluetoothFrameworkInitializer;->setBinderCallsStatsInitializer(Ljava/util/function/Consumer;)V

    .line 8212
    new-instance v0, Landroid/nfc/NfcServiceManager;

    invoke-direct {v0}, Landroid/nfc/NfcServiceManager;-><init>()V

    invoke-static {v0}, Landroid/nfc/NfcFrameworkInitializer;->setNfcServiceManager(Landroid/nfc/NfcServiceManager;)V

    .line 8214
    new-instance v0, Landroid/provider/DeviceConfigServiceManager;

    invoke-direct {v0}, Landroid/provider/DeviceConfigServiceManager;-><init>()V

    invoke-static {v0}, Landroid/provider/DeviceConfigInitializer;->setDeviceConfigServiceManager(Landroid/provider/DeviceConfigServiceManager;)V

    .line 8215
    return-void
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 7282
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7284
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 7293
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v3

    .line 7295
    .local v3, "cph":Landroid/app/ContentProviderHolder;
    if-eqz v3, :cond_28

    .line 7296
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 7297
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7299
    .end local v2    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v3    # "cph":Landroid/app/ContentProviderHolder;
    :cond_28
    goto :goto_9

    .line 7302
    :cond_29
    :try_start_29
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 7303
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 7302
    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_36

    .line 7306
    nop

    .line 7307
    return-void

    .line 7304
    :catch_36
    move-exception v1

    .line 7305
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/app/ContentProviderHolder;
    .param p3, "info"    # Landroid/content/pm/ProviderInfo;
    .param p4, "noisy"    # Z
    .param p5, "noReleaseNeeded"    # Z
    .param p6, "stable"    # Z

    .line 7721
    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    const/4 v5, 0x0

    .line 7723
    .local v5, "localProvider":Landroid/content/ContentProvider;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_19

    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_11

    goto :goto_19

    .line 7792
    :cond_11
    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    move-object/from16 v10, p1

    move-object v13, v0

    move-object v12, v5

    .local v0, "provider":Landroid/content/IContentProvider;
    goto/16 :goto_119

    .line 7724
    .end local v0    # "provider":Landroid/content/IContentProvider;
    :cond_19
    :goto_19
    if-eqz p4, :cond_41

    .line 7725
    const-string v0, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7728
    :cond_41
    const/4 v8, 0x0

    .line 7729
    .local v8, "c":Landroid/content/Context;
    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7730
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 7731
    move-object/from16 v8, p1

    move-object/from16 v10, p1

    goto :goto_79

    .line 7732
    :cond_55
    iget-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_6a

    .line 7733
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 7734
    iget-object v8, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object/from16 v10, p1

    goto :goto_79

    .line 7737
    :cond_6a
    :try_start_6a
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_6c} :catch_76

    move-object/from16 v10, p1

    :try_start_6e
    invoke-virtual {v10, v0, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_72} :catch_74

    move-object v8, v0

    .line 7741
    goto :goto_79

    .line 7739
    :catch_74
    move-exception v0

    goto :goto_79

    :catch_76
    move-exception v0

    move-object/from16 v10, p1

    .line 7743
    :goto_79
    const/4 v11, 0x0

    if-nez v8, :cond_a3

    .line 7744
    const-string v0, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to get context for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while loading content provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7748
    return-object v11

    .line 7751
    :cond_a3
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_b6

    .line 7753
    :try_start_a7
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0
    :try_end_ad
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a7 .. :try_end_ad} :catch_af

    move-object v8, v0

    .line 7756
    goto :goto_b6

    .line 7754
    :catch_af
    move-exception v0

    .line 7755
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 7758
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b6
    :goto_b6
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    if-eqz v0, :cond_c7

    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_c7

    .line 7759
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->attributionTags:[Ljava/lang/String;

    aget-object v0, v0, v6

    .line 7760
    .local v0, "attributionTag":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v8

    .line 7764
    .end local v0    # "attributionTag":Ljava/lang/String;
    :cond_c7
    :try_start_c7
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 7765
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v12, v7}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v12

    .line 7766
    .local v12, "packageInfo":Landroid/app/LoadedApk;
    if-nez v12, :cond_da

    .line 7768
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    move-object v12, v13

    .line 7770
    :cond_da
    invoke-virtual {v12}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v13

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 7771
    invoke-virtual {v13, v0, v14}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v13

    move-object v5, v13

    .line 7772
    invoke-virtual {v5}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v13

    .line 7773
    .local v13, "provider":Landroid/content/IContentProvider;
    if-nez v13, :cond_114

    .line 7774
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to instantiate class "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, " from sourceDir "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7777
    return-object v11

    .line 7782
    :cond_114
    invoke-virtual {v5, v8, v3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_117} :catch_19f

    .line 7790
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v12    # "packageInfo":Landroid/app/LoadedApk;
    nop

    .line 7791
    .end local v8    # "c":Landroid/content/Context;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    move-object v12, v5

    .line 7799
    .end local v5    # "localProvider":Landroid/content/ContentProvider;
    .local v12, "localProvider":Landroid/content/ContentProvider;
    :goto_119
    iget-object v14, v1, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 7802
    :try_start_11c
    invoke-interface {v13}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v5, v0

    .line 7803
    .local v5, "jBinder":Landroid/os/IBinder;
    if-eqz v12, :cond_157

    .line 7804
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7805
    .local v0, "cname":Landroid/content/ComponentName;
    iget-object v6, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7806
    .local v6, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v6, :cond_13a

    .line 7811
    iget-object v7, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    move-object v13, v7

    .end local v13    # "provider":Landroid/content/IContentProvider;
    .local v7, "provider":Landroid/content/IContentProvider;
    goto :goto_153

    .line 7813
    .end local v7    # "provider":Landroid/content/IContentProvider;
    .restart local v13    # "provider":Landroid/content/IContentProvider;
    :cond_13a
    new-instance v8, Landroid/app/ContentProviderHolder;

    invoke-direct {v8, v3}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_13f
    .catchall {:try_start_11c .. :try_end_13f} :catchall_19a

    move-object v2, v8

    .line 7814
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .local v2, "holder":Landroid/app/ContentProviderHolder;
    :try_start_140
    iput-object v13, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 7815
    iput-boolean v7, v2, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    .line 7816
    invoke-direct {p0, v13, v12, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v7

    move-object v6, v7

    .line 7817
    iget-object v7, v1, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7818
    iget-object v7, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7820
    :goto_153
    iget-object v7, v6, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;
    :try_end_155
    .catchall {:try_start_140 .. :try_end_155} :catchall_19d

    move-object v0, v7

    .line 7821
    .end local v6    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .local v0, "retHolder":Landroid/app/ContentProviderHolder;
    goto :goto_198

    .line 7822
    .end local v0    # "retHolder":Landroid/app/ContentProviderHolder;
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :cond_157
    :try_start_157
    iget-object v0, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    move-object v8, v0

    .line 7823
    .local v8, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v8, :cond_173

    .line 7831
    if-nez p5, :cond_196

    .line 7832
    invoke-direct {p0, v8, v4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_167
    .catchall {:try_start_157 .. :try_end_167} :catchall_19a

    .line 7834
    :try_start_167
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v6, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v6, v4}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_170
    .catch Landroid/os/RemoteException; {:try_start_167 .. :try_end_170} :catch_171
    .catchall {:try_start_167 .. :try_end_170} :catchall_19a

    goto :goto_172

    .line 7836
    :catch_171
    move-exception v0

    .line 7838
    :goto_172
    goto :goto_196

    .line 7841
    :cond_173
    :try_start_173
    invoke-direct {p0, v13, v12, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v0

    .line 7843
    .local v0, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_182

    .line 7844
    new-instance v6, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v7, 0x3e8

    invoke-direct {v6, v2, v0, v7, v7}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    move-object v8, v6

    .end local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .local v6, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    goto :goto_191

    .line 7846
    .end local v6    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .restart local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_182
    if-eqz v4, :cond_18a

    .line 7847
    new-instance v9, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v9, v2, v0, v7, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    goto :goto_18f

    .line 7848
    :cond_18a
    new-instance v9, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v9, v2, v0, v6, v7}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    :goto_18f
    move-object v6, v9

    move-object v8, v6

    .line 7850
    :goto_191
    iget-object v6, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7852
    .end local v0    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_196
    :goto_196
    iget-object v0, v8, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;
    :try_end_198
    .catchall {:try_start_173 .. :try_end_198} :catchall_19a

    .line 7854
    .end local v5    # "jBinder":Landroid/os/IBinder;
    .end local v8    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .local v0, "retHolder":Landroid/app/ContentProviderHolder;
    .restart local v2    # "holder":Landroid/app/ContentProviderHolder;
    :goto_198
    :try_start_198
    monitor-exit v14

    .line 7855
    return-object v0

    .line 7854
    .end local v0    # "retHolder":Landroid/app/ContentProviderHolder;
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_19a
    move-exception v0

    .end local p2    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v2    # "holder":Landroid/app/ContentProviderHolder;
    :goto_19b
    monitor-exit v14
    :try_end_19c
    .catchall {:try_start_198 .. :try_end_19c} :catchall_19d

    throw v0

    :catchall_19d
    move-exception v0

    goto :goto_19b

    .line 7783
    .end local v2    # "holder":Landroid/app/ContentProviderHolder;
    .end local v12    # "localProvider":Landroid/content/ContentProvider;
    .end local v13    # "provider":Landroid/content/IContentProvider;
    .local v5, "localProvider":Landroid/content/ContentProvider;
    .local v8, "c":Landroid/content/Context;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "holder":Landroid/app/ContentProviderHolder;
    :catch_19f
    move-exception v0

    .line 7784
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v11, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_1a9

    .line 7789
    return-object v11

    .line 7785
    :cond_1a9
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get provider "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ": "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7787
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .registers 14
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "localProvider"    # Landroid/content/ContentProvider;
    .param p3, "holder"    # Landroid/app/ContentProviderHolder;

    .line 7668
    iget-object v0, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7669
    .local v0, "auths":[Ljava/lang/String;
    iget-object v1, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 7671
    .local v1, "userId":I
    const/4 v8, 0x0

    if-eqz p1, :cond_7b

    .line 7674
    array-length v2, v0

    move v3, v8

    :goto_19
    if-ge v3, v2, :cond_7b

    aget-object v4, v0, v3

    .line 7675
    .local v4, "auth":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_cc

    :cond_24
    goto :goto_6c

    :sswitch_25
    const-string v5, "com.android.blockednumber"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x3

    goto :goto_6d

    :sswitch_2f
    const-string v5, "downloads"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x5

    goto :goto_6d

    :sswitch_39
    const-string/jumbo v5, "telephony"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x6

    goto :goto_6d

    :sswitch_44
    const-string v5, "call_log_shadow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x2

    goto :goto_6d

    :sswitch_4e
    const-string v5, "call_log"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    goto :goto_6d

    :sswitch_58
    const-string v5, "com.android.calendar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x4

    goto :goto_6d

    :sswitch_62
    const-string v5, "com.android.contacts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    move v5, v8

    goto :goto_6d

    :goto_6c
    const/4 v5, -0x1

    :goto_6d
    packed-switch v5, :pswitch_data_ea

    goto :goto_78

    .line 7683
    :pswitch_71
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 7674
    .end local v4    # "auth":Ljava/lang/String;
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 7688
    :cond_7b
    new-instance v9, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V

    .line 7690
    .local v2, "pcr":Landroid/app/ActivityThread$ProviderClientRecord;
    array-length v3, v0

    :goto_87
    if-ge v8, v3, :cond_cb

    aget-object v4, v0, v8

    .line 7691
    .restart local v4    # "auth":Ljava/lang/String;
    new-instance v5, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v5, v4, v1}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 7692
    .local v5, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7693
    .local v6, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v6, :cond_c3

    .line 7694
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content provider "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    iget-object v9, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " already published as "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ActivityThread"

    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 7697
    :cond_c3
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7690
    .end local v4    # "auth":Ljava/lang/String;
    .end local v5    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v6    # "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    :goto_c8
    add-int/lit8 v8, v8, 0x1

    goto :goto_87

    .line 7700
    :cond_cb
    return-object v2

    :sswitch_data_cc
    .sparse-switch
        -0x3260a241 -> :sswitch_62
        -0x1b2f0756 -> :sswitch_58
        -0xa45121d -> :sswitch_4e
        0x3cfb2fc -> :sswitch_44
        0x2eaeb418 -> :sswitch_39
        0x4e3e48eb -> :sswitch_2f
        0x76f32249 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
    .end packed-switch
.end method

.method private static isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z
    .registers 6
    .param p0, "loadedApk"    # Landroid/app/LoadedApk;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2805
    iget-object v0, p0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    .line 2806
    .local v0, "packageResources":Landroid/content/res/Resources;
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 2807
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2808
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2806
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 2809
    .local v1, "resourceDirsUpToDate":Z
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    .line 2810
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2811
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2809
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    .line 2813
    .local v2, "overlayPathsUpToDate":Z
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_32
    if-eqz v1, :cond_38

    if-eqz v2, :cond_38

    const/4 v3, 0x1

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    return v3
.end method

.method public static isProtectedBroadcast(Landroid/content/Intent;)Z
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 8273
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 8277
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    return v0

    .line 8278
    :catch_15
    move-exception v0

    .line 8280
    return v1
.end method

.method public static isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z
    .registers 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;

    .line 8229
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z
    .registers 7
    .param p0, "ci"    # Landroid/content/pm/ComponentInfo;
    .param p1, "permission"    # Ljava/lang/String;

    .line 8251
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 8254
    :cond_8
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 8255
    return v2

    .line 8257
    :cond_e
    if-eqz p1, :cond_28

    .line 8259
    :try_start_10
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    .line 8260
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 8259
    invoke-interface {v0, p1, v3, v1}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 8261
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_27

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    move v1, v2

    :cond_26
    return v1

    .line 8262
    .end local v0    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_27
    move-exception v0

    .line 8265
    :cond_28
    return v1
.end method

.method public static isProtectedComponent(Landroid/content/pm/ServiceInfo;)Z
    .registers 2
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .line 8238
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ComponentInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSystem()Z
    .registers 1

    .line 2535
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private synthetic lambda$attach$2(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 7927
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 7930
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 7932
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget-object v2, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 7933
    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 7932
    invoke-virtual {v1, v2}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 7936
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 7937
    invoke-virtual {v1, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 7938
    .local v1, "updatedConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_26

    .line 7939
    const/16 v2, 0x76

    invoke-virtual {p0, v2, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 7940
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 7943
    .end local v1    # "updatedConfig":Landroid/content/res/Configuration;
    :cond_26
    monitor-exit v0

    .line 7944
    return-void

    .line 7943
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method static synthetic lambda$handleRequestDirectActions$0(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;Ljava/util/List;)V
    .registers 8
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p2, "actions"    # Ljava/util/List;

    .line 4110
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4111
    const-string v0, "actions"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 4112
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 4113
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4114
    .local v0, "actionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_2d

    .line 4115
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DirectAction;

    .line 4116
    .local v2, "action":Landroid/app/DirectAction;
    iget-object v3, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    iget-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getAssistToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/DirectAction;->setSource(ILandroid/os/IBinder;)V

    .line 4114
    .end local v2    # "action":Landroid/app/DirectAction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4118
    .end local v1    # "i":I
    :cond_2d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4119
    .local v1, "result":Landroid/os/Bundle;
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const-string v3, "actions_list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4121
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4122
    .end local v0    # "actionCount":I
    .end local v1    # "result":Landroid/os/Bundle;
    goto :goto_44

    .line 4123
    :cond_40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 4125
    :goto_44
    return-void
.end method

.method static synthetic lambda$initializeMainlineModules$3(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 8210
    invoke-static {p0}, Lcom/android/internal/os/BinderCallsStats;->startForBluetooth(Landroid/content/Context;)V

    .line 8211
    return-void
.end method

.method private synthetic lambda$syncTransferSplashscreenViewTransaction$1(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 4291
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 10
    .param p0, "args"    # [Ljava/lang/String;

    .line 8146
    const-string v0, "ActivityThreadMain"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8149
    invoke-static {}, Landroid/app/ActivityThread$AndroidOs;->install()V

    .line 8154
    const/4 v0, 0x0

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 8156
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 8159
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 8160
    .local v3, "configDir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 8163
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 8165
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 8167
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 8171
    const-wide/16 v4, 0x0

    .line 8172
    .local v4, "startSeq":J
    if-eqz p0, :cond_50

    .line 8173
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_2e
    if-ltz v6, :cond_50

    .line 8174
    aget-object v7, p0, v6

    if-eqz v7, :cond_4d

    aget-object v7, p0, v6

    const-string/jumbo v8, "seq="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 8175
    aget-object v7, p0, v6

    .line 8176
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 8175
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 8173
    :cond_4d
    add-int/lit8 v6, v6, -0x1

    goto :goto_2e

    .line 8180
    .end local v6    # "i":I
    :cond_50
    new-instance v6, Landroid/app/ActivityThread;

    invoke-direct {v6}, Landroid/app/ActivityThread;-><init>()V

    .line 8181
    .local v6, "thread":Landroid/app/ActivityThread;
    invoke-direct {v6, v0, v4, v5}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 8183
    sget-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_62

    .line 8184
    invoke-virtual {v6}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 8193
    :cond_62
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 8194
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 8196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nInitZygoteChildHeapProfiling()V
.end method

.method private native nPurgePendingResources()V
.end method

.method private onCoreSettingsChange()V
    .registers 3

    .line 5484
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDebugViewAttributeState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5486
    const/4 v0, 0x1

    const-string/jumbo v1, "onCoreSettingsChange"

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->relaunchAllActivities(ZLjava/lang/String;)V

    .line 5488
    :cond_d
    return-void
.end method

.method private performActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .registers 26
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "amOverrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "displayId"    # I
    .param p5, "alwaysReportChange"    # Z

    .line 6057
    move-object/from16 v6, p2

    move/from16 v7, p4

    move-object/from16 v8, p1

    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6058
    .local v9, "activity":Landroid/app/Activity;
    invoke-virtual {v9}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    .line 6063
    .local v10, "activityToken":Landroid/os/IBinder;
    invoke-direct/range {p0 .. p2}, Landroid/app/ActivityThread;->handleWindowingModeChangeIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    .line 6065
    invoke-virtual {v9}, Landroid/app/Activity;->getDisplayId()I

    move-result v0

    invoke-static {v0, v7}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v11

    .line 6067
    .local v11, "movedToDifferentDisplay":Z
    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 6068
    .local v12, "currentResConfig":Landroid/content/res/Configuration;
    invoke-virtual {v12, v6}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v13

    .line 6069
    .local v13, "diff":I
    const/4 v14, 0x1

    if-eqz v13, :cond_28

    move v0, v14

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    move/from16 v16, v0

    .line 6072
    .local v16, "hasPublicResConfigChange":Z
    if-nez v16, :cond_41

    .line 6074
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 6073
    move-object v0, v10

    move-object v1, v12

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v11

    invoke-static/range {v0 .. v5}, Landroid/window/ConfigurationHelper;->shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v14, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    nop

    :goto_42
    move v0, v14

    .line 6075
    .local v0, "shouldUpdateResources":Z
    iget-object v1, v9, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object v2

    iget-object v3, v9, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 6077
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v3

    .line 6075
    move/from16 v4, p5

    invoke-static {v1, v6, v2, v3, v4}, Landroid/app/ActivityThread;->shouldReportChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;IZ)Z

    move-result v1

    .line 6079
    .local v1, "shouldReportChange":Z
    if-nez v0, :cond_5b

    if-nez v1, :cond_5b

    .line 6080
    const/4 v2, 0x0

    return-object v2

    .line 6087
    :cond_5b
    invoke-virtual {v9}, Landroid/app/Activity;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6095
    .local v2, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    move-object/from16 v3, p3

    invoke-static {v3, v2}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v5

    .line 6097
    .local v5, "finalOverrideConfig":Landroid/content/res/Configuration;
    move-object/from16 v14, p0

    iget-object v15, v14, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v15, v10, v5, v7}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 6102
    invoke-static {v6, v2}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v15

    .line 6105
    .local v15, "configToReport":Landroid/content/res/Configuration;
    if-eqz v11, :cond_75

    .line 6106
    invoke-virtual {v9, v7, v15}, Landroid/app/Activity;->dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 6109
    :cond_75
    move/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "shouldUpdateResources":Z
    .local v18, "shouldUpdateResources":Z
    iput v0, v9, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 6110
    if-eqz v1, :cond_b8

    .line 6111
    iput-boolean v0, v9, Landroid/app/Activity;->mCalled:Z

    .line 6112
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v9, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6113
    invoke-virtual {v9, v15}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6114
    iget-boolean v0, v9, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_91

    move/from16 v17, v1

    move-object/from16 v19, v2

    goto :goto_bc

    .line 6115
    :cond_91
    new-instance v0, Landroid/util/SuperNotCalledException;

    move/from16 v17, v1

    .end local v1    # "shouldReportChange":Z
    .local v17, "shouldReportChange":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    .end local v2    # "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    .local v19, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6110
    .end local v17    # "shouldReportChange":Z
    .end local v19    # "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    .restart local v1    # "shouldReportChange":Z
    .restart local v2    # "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    :cond_b8
    move/from16 v17, v1

    move-object/from16 v19, v2

    .line 6120
    .end local v1    # "shouldReportChange":Z
    .end local v2    # "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    .restart local v17    # "shouldReportChange":Z
    .restart local v19    # "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    :goto_bc
    return-object v15
.end method

.method private performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .registers 13
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "newBaseConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I
    .param p4, "alwaysReportChange"    # Z

    .line 6034
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6035
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_14

    .line 6036
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 6038
    :cond_14
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread;->performActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    .line 6040
    .local v0, "reportedConfig":Landroid/content/res/Configuration;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgettmpConfig(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-static {v1}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 6041
    return-object v0
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 33
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .line 3671
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3672
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    const/4 v11, 0x1

    if-nez v0, :cond_17

    .line 3673
    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v15, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v15, v0, v1, v11}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 3677
    :cond_17
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3678
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_30

    .line 3679
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v2, v15, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3680
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3679
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3681
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3684
    :cond_30
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 3685
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object v9, v0

    goto :goto_47

    .line 3684
    :cond_46
    move-object v9, v0

    .line 3689
    .end local v0    # "component":Landroid/content/ComponentName;
    .local v9, "component":Landroid/content/ComponentName;
    :goto_47
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v8

    .line 3690
    .local v8, "appContext":Landroid/app/ContextImpl;
    const/4 v1, 0x0

    .line 3692
    .local v1, "activity":Landroid/app/Activity;
    :try_start_4c
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3693
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 3694
    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3693
    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v2

    move-object v1, v2

    .line 3695
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 3696
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3697
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Landroid/app/ActivityThread;->isProtectedComponent(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    .line 3698
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    .line 3697
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 3699
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v2, :cond_81

    .line 3700
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_81} :catch_83

    .line 3708
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_81
    move-object v6, v1

    goto :goto_8d

    .line 3702
    :catch_83
    move-exception v0

    .line 3703
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2d1

    move-object v6, v1

    .line 3711
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "activity":Landroid/app/Activity;
    .local v6, "activity":Landroid/app/Activity;
    :goto_8d
    :try_start_8d
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;
    :try_end_8f
    .catch Landroid/util/SuperNotCalledException; {:try_start_8d .. :try_end_8f} :catch_2c6
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8f} :catch_289

    :try_start_8f
    iget-object v1, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/app/LoadedApk;->makeApplicationInner(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v7

    .line 3724
    .local v7, "app":Landroid/app/Application;
    iget-object v1, v15, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1
    :try_end_99
    .catch Landroid/util/SuperNotCalledException; {:try_start_8f .. :try_end_99} :catch_27e
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_99} :catch_289

    .line 3725
    :try_start_99
    iget-object v0, v15, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3726
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_268

    .line 3728
    if-eqz v6, :cond_259

    .line 3729
    :try_start_a3
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 3730
    .local v10, "title":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, v15, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 3731
    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3732
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;
    :try_end_ba
    .catch Landroid/util/SuperNotCalledException; {:try_start_a3 .. :try_end_ba} :catch_27e
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ba} :catch_289

    if-eqz v1, :cond_db

    .line 3733
    :try_start_bc
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_c1
    .catch Landroid/util/SuperNotCalledException; {:try_start_bc .. :try_end_c1} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c1} :catch_c2

    goto :goto_db

    .line 3795
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v7    # "app":Landroid/app/Application;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :catch_c2
    move-exception v0

    move-object v3, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_294

    .line 3792
    :catch_cf
    move-exception v0

    move-object v3, v6

    move-object/from16 v26, v8

    move-object v7, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_2d0

    .line 3737
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :cond_db
    :goto_db
    const/4 v1, 0x0

    .line 3738
    .local v1, "window":Landroid/view/Window;
    :try_start_dc
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;
    :try_end_de
    .catch Landroid/util/SuperNotCalledException; {:try_start_dc .. :try_end_de} :catch_27e
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_de} :catch_289

    const/4 v4, 0x0

    if-eqz v2, :cond_ef

    :try_start_e1
    iget-boolean v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v2, :cond_ef

    .line 3739
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    move-object v1, v2

    .line 3740
    iput-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 3741
    iput-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;
    :try_end_ec
    .catch Landroid/util/SuperNotCalledException; {:try_start_e1 .. :try_end_ec} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_ec} :catch_c2

    move-object/from16 v21, v1

    goto :goto_f1

    .line 3746
    :cond_ef
    move-object/from16 v21, v1

    .end local v1    # "window":Landroid/view/Window;
    .local v21, "window":Landroid/view/Window;
    :goto_f1
    :try_start_f1
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3747
    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getLoaders()Ljava/util/List;

    move-result-object v2

    new-array v3, v5, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/res/loader/ResourcesLoader;

    .line 3746
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    .line 3749
    invoke-virtual {v8, v6}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3750
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v16

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v11, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_117
    .catch Landroid/util/SuperNotCalledException; {:try_start_f1 .. :try_end_117} :catch_27e
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_117} :catch_289

    move-object/from16 v18, v12

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_119
    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;
    :try_end_11b
    .catch Landroid/util/SuperNotCalledException; {:try_start_119 .. :try_end_11b} :catch_24d
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11b} :catch_240

    :try_start_11b
    iget-object v13, v14, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;
    :try_end_11d
    .catch Landroid/util/SuperNotCalledException; {:try_start_11b .. :try_end_11d} :catch_239
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11d} :catch_230

    :try_start_11d
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    move-object/from16 v22, v7

    .end local v7    # "app":Landroid/app/Application;
    .local v22, "app":Landroid/app/Application;
    iget-object v7, v14, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    move-object/from16 v23, v10

    .end local v10    # "title":Ljava/lang/CharSequence;
    .local v23, "title":Ljava/lang/CharSequence;
    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v19, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    move-object/from16 v20, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    move-object/from16 v24, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;
    :try_end_133
    .catch Landroid/util/SuperNotCalledException; {:try_start_11d .. :try_end_133} :catch_226
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_133} :catch_21a

    move-object/from16 v25, v1

    move-object v1, v6

    move/from16 v26, v2

    move-object v2, v8

    move-object/from16 v27, v3

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v5, v27

    move-object/from16 v28, v6

    .end local v6    # "activity":Landroid/app/Activity;
    .local v28, "activity":Landroid/app/Activity;
    move/from16 v6, v26

    move-object/from16 v26, v8

    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .local v26, "appContext":Landroid/app/ContextImpl;
    move-object/from16 v8, v25

    move-object/from16 v29, v9

    .end local v9    # "component":Landroid/content/ComponentName;
    .local v29, "component":Landroid/content/ComponentName;
    move-object v9, v11

    move-object v11, v12

    move-object/from16 v25, v18

    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v25, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object v12, v13

    move-object v13, v15

    move-object v15, v14

    move-object v14, v0

    move-object v15, v7

    move-object/from16 v16, v19

    move-object/from16 v17, v21

    move-object/from16 v18, v20

    move-object/from16 v19, v24

    move-object/from16 v20, v10

    move-object/from16 v7, v22

    move-object/from16 v10, v23

    .end local v22    # "app":Landroid/app/Application;
    .end local v23    # "title":Ljava/lang/CharSequence;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :try_start_162
    invoke-virtual/range {v1 .. v20}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_165
    .catch Landroid/util/SuperNotCalledException; {:try_start_162 .. :try_end_165} :catch_20d
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_165} :catch_202

    .line 3756
    move-object/from16 v2, p2

    if-eqz v2, :cond_17c

    .line 3757
    move-object/from16 v3, v28

    .end local v28    # "activity":Landroid/app/Activity;
    .local v3, "activity":Landroid/app/Activity;
    :try_start_16b
    iput-object v2, v3, Landroid/app/Activity;->mIntent:Landroid/content/Intent;
    :try_end_16d
    .catch Landroid/util/SuperNotCalledException; {:try_start_16b .. :try_end_16d} :catch_175
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_16d} :catch_16e

    goto :goto_17e

    .line 3795
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v7    # "app":Landroid/app/Application;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v21    # "window":Landroid/view/Window;
    :catch_16e
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    goto/16 :goto_294

    .line 3792
    :catch_175
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    goto/16 :goto_278

    .line 3756
    .end local v3    # "activity":Landroid/app/Activity;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    .restart local v21    # "window":Landroid/view/Window;
    .restart local v28    # "activity":Landroid/app/Activity;
    :cond_17c
    move-object/from16 v3, v28

    .line 3759
    .end local v28    # "activity":Landroid/app/Activity;
    .restart local v3    # "activity":Landroid/app/Activity;
    :goto_17e
    move-object/from16 v4, p1

    const/4 v1, 0x0

    :try_start_181
    iput-object v1, v4, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 3760
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 3761
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/app/Activity;->mStartedActivity:Z

    .line 3762
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v6

    .line 3763
    .local v6, "theme":I
    if-eqz v6, :cond_194

    .line 3764
    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTheme(I)V

    .line 3767
    :cond_194
    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v8, :cond_19e

    .line 3768
    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    iput-object v8, v3, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 3769
    iput-object v1, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 3771
    :cond_19e
    iget-boolean v1, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mLaunchedFromBubble:Z

    iput-boolean v1, v3, Landroid/app/Activity;->mLaunchedFromBubble:Z

    .line 3772
    iput-boolean v5, v3, Landroid/app/Activity;->mCalled:Z

    .line 3777
    iput-object v3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3778
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1
    :try_end_1aa
    .catch Landroid/util/SuperNotCalledException; {:try_start_181 .. :try_end_1aa} :catch_1fd
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1aa} :catch_1f8

    if-eqz v1, :cond_1b8

    .line 3779
    move-object/from16 v5, p0

    :try_start_1ae
    iget-object v1, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v3, v8, v9}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_1c1

    .line 3781
    :cond_1b8
    move-object/from16 v5, p0

    iget-object v1, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v8}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3783
    :goto_1c1
    iget-boolean v1, v3, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_1cf

    .line 3788
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    iput v1, v4, Landroid/app/ActivityThread$ActivityClientRecord;->mLastReportedWindowingMode:I

    goto/16 :goto_263

    .line 3784
    :cond_1cf
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3785
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " did not call through to super.onCreate()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v29    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "customIntent":Landroid/content/Intent;
    throw v1

    .line 3795
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v6    # "theme":I
    .end local v7    # "app":Landroid/app/Application;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v21    # "window":Landroid/view/Window;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v29    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "customIntent":Landroid/content/Intent;
    :catch_1f8
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_294

    .line 3792
    :catch_1fd
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_278

    .line 3795
    .end local v3    # "activity":Landroid/app/Activity;
    .restart local v28    # "activity":Landroid/app/Activity;
    :catch_202
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    .end local v28    # "activity":Landroid/app/Activity;
    .restart local v3    # "activity":Landroid/app/Activity;
    goto/16 :goto_294

    .line 3792
    .end local v3    # "activity":Landroid/app/Activity;
    .restart local v28    # "activity":Landroid/app/Activity;
    :catch_20d
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    move-object/from16 v7, v29

    .end local v28    # "activity":Landroid/app/Activity;
    .restart local v3    # "activity":Landroid/app/Activity;
    goto/16 :goto_2d0

    .line 3795
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v29    # "component":Landroid/content/ComponentName;
    .local v6, "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_21a
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object v4, v14

    goto :goto_249

    .line 3792
    :catch_226
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v26, v8

    move-object v4, v14

    goto :goto_254

    .line 3795
    :catch_230
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    goto :goto_247

    .line 3792
    :catch_239
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v26, v8

    goto :goto_252

    .line 3795
    :catch_240
    move-exception v0

    move-object v3, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object v2, v13

    :goto_247
    move-object v4, v14

    move-object v5, v15

    :goto_249
    move-object/from16 v25, v18

    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_294

    .line 3792
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_24d
    move-exception v0

    move-object v3, v6

    move-object/from16 v26, v8

    move-object v2, v13

    :goto_252
    move-object v4, v14

    move-object v5, v15

    :goto_254
    move-object/from16 v25, v18

    move-object v7, v9

    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto/16 :goto_2d0

    .line 3728
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_259
    move-object v3, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    .line 3790
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v29    # "component":Landroid/content/ComponentName;
    :goto_263
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V
    :try_end_267
    .catch Landroid/util/SuperNotCalledException; {:try_start_1ae .. :try_end_267} :catch_277
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_267} :catch_275

    .line 3801
    .end local v7    # "app":Landroid/app/Application;
    goto :goto_29c

    .line 3726
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v7    # "app":Landroid/app/Application;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_268
    move-exception v0

    move-object v3, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v29    # "component":Landroid/content/ComponentName;
    :goto_273
    :try_start_273
    monitor-exit v1
    :try_end_274
    .catchall {:try_start_273 .. :try_end_274} :catchall_27c

    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v29    # "component":Landroid/content/ComponentName;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "customIntent":Landroid/content/Intent;
    :try_start_274
    throw v0
    :try_end_275
    .catch Landroid/util/SuperNotCalledException; {:try_start_274 .. :try_end_275} :catch_277
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_275} :catch_275

    .line 3795
    .end local v7    # "app":Landroid/app/Application;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v29    # "component":Landroid/content/ComponentName;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "customIntent":Landroid/content/Intent;
    :catch_275
    move-exception v0

    goto :goto_294

    .line 3792
    :catch_277
    move-exception v0

    :goto_278
    move-object/from16 v7, v29

    goto/16 :goto_2d0

    .line 3726
    .restart local v7    # "app":Landroid/app/Application;
    :catchall_27c
    move-exception v0

    goto :goto_273

    .line 3792
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v7    # "app":Landroid/app/Application;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_27e
    move-exception v0

    move-object v3, v6

    move-object/from16 v26, v8

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    move-object v7, v9

    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v29    # "component":Landroid/content/ComponentName;
    goto :goto_2d0

    .line 3795
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .end local v29    # "component":Landroid/content/ComponentName;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_289
    move-exception v0

    move-object v3, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    .line 3796
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v29    # "component":Landroid/content/ComponentName;
    :goto_294
    iget-object v1, v5, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_29d

    .line 3803
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_29c
    return-object v3

    .line 3797
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_29d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, v29

    .end local v29    # "component":Landroid/content/ComponentName;
    .local v7, "component":Landroid/content/ComponentName;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3799
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3792
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .restart local v6    # "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catch_2c6
    move-exception v0

    move-object v3, v6

    move-object/from16 v26, v8

    move-object v7, v9

    move-object/from16 v25, v12

    move-object v2, v13

    move-object v4, v14

    move-object v5, v15

    .line 3793
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "e":Landroid/util/SuperNotCalledException;
    .restart local v3    # "activity":Landroid/app/Activity;
    .restart local v7    # "component":Landroid/content/ComponentName;
    .restart local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    :goto_2d0
    throw v0

    .line 3704
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v25    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "appContext":Landroid/app/ContextImpl;
    .local v0, "e":Ljava/lang/Exception;
    .local v1, "activity":Landroid/app/Activity;
    .restart local v8    # "appContext":Landroid/app/ContextImpl;
    .restart local v9    # "component":Landroid/content/ComponentName;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_2d1
    move-object/from16 v26, v8

    move-object v7, v9

    .end local v8    # "appContext":Landroid/app/ContextImpl;
    .end local v9    # "component":Landroid/content/ComponentName;
    .restart local v7    # "component":Landroid/content/ComponentName;
    .restart local v26    # "appContext":Landroid/app/ContextImpl;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate activity "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3706
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .registers 12
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5208
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 5209
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_c

    .line 5213
    return-object v1

    .line 5215
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing pause of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5217
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5218
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5220
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_37
    const/4 v0, 0x1

    if-eqz p2, :cond_3e

    .line 5221
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mFinished:Z

    .line 5225
    :cond_3e
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4c

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v3

    .line 5226
    .local v0, "shouldSaveState":Z
    :goto_4d
    if-eqz v0, :cond_52

    .line 5227
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5230
    :cond_52
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5234
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 5235
    :try_start_58
    iget-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 5236
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_92

    .line 5237
    if-eqz v4, :cond_69

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_69
    move v2, v3

    .line 5238
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6b
    if-ge v3, v2, :cond_7b

    .line 5239
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v5, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 5238
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 5242
    .end local v3    # "i":I
    :cond_7b
    if-eqz p4, :cond_82

    invoke-virtual {p4}, Landroid/app/servertransaction/PendingTransactionActions;->getOldState()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_83

    :cond_82
    move-object v3, v1

    .line 5243
    .local v3, "oldState":Landroid/os/Bundle;
    :goto_83
    if-eqz v3, :cond_8d

    .line 5249
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 5250
    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5254
    :cond_8d
    if-eqz v0, :cond_91

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :cond_91
    return-object v1

    .line 5236
    .end local v2    # "size":I
    .end local v3    # "oldState":Landroid/os/Bundle;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_92
    move-exception v1

    :try_start_93
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v1
.end method

.method private performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 5258
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v0, :cond_5

    .line 5260
    return-void

    .line 5265
    :cond_5
    const-string/jumbo v0, "pausing"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5268
    :try_start_c
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    .line 5269
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 5270
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_1e

    .line 5281
    goto :goto_4e

    .line 5271
    :cond_1e
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v2}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "reason":Ljava/lang/String;
    throw v0
    :try_end_43
    .catch Landroid/util/SuperNotCalledException; {:try_start_c .. :try_end_43} :catch_80
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_43} :catch_43

    .line 5276
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "reason":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 5277
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 5282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4e
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5283
    return-void

    .line 5278
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_53
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to pause activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5279
    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5274
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_80
    move-exception v0

    .line 5275
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    .param p3, "saveState"    # Z
    .param p4, "finalStateRequest"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5330
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_3f

    .line 5331
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_b

    .line 5335
    return-void

    .line 5337
    :cond_b
    if-nez p4, :cond_3f

    .line 5338
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of activity that is already stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5340
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5341
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5342
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3f
    invoke-direct {p0, p1, p5}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5349
    if-eqz p2, :cond_8b

    .line 5354
    :try_start_44
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setDescription(Ljava/lang/CharSequence;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4d} :catch_4e

    .line 5362
    goto :goto_8b

    .line 5355
    :catch_4e
    move-exception v0

    .line 5356
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_5a

    goto :goto_8b

    .line 5357
    :cond_5a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5359
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5360
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8b
    :goto_8b
    invoke-direct {p0, p1, p3, p5}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5366
    return-void
.end method

.method private prepareInstrumentation(Landroid/app/ActivityThread$AppBindData;)Landroid/content/pm/InstrumentationInfo;
    .registers 7
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7172
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 7173
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 7172
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_ca

    .line 7176
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    nop

    .line 7177
    if-eqz v0, :cond_af

    .line 7183
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 7184
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 7185
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package uses different ABI(s) than its instrumentation: package["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " instrumentation["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7192
    :cond_82
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 7193
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 7194
    iget-object v1, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 7195
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 7196
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 7197
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 7198
    iget-object v1, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 7200
    return-object v0

    .line 7178
    :cond_af
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find instrumentation info for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7174
    .end local v0    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_ca
    move-exception v0

    .line 7175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 2990
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    return-void
.end method

.method private purgePendingResources()V
    .registers 4

    .line 8218
    const-string/jumbo v0, "purgePendingResources"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8219
    invoke-direct {p0}, Landroid/app/ActivityThread;->nPurgePendingResources()V

    .line 8220
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 8221
    return-void
.end method

.method private relaunchAllActivities(ZLjava/lang/String;)V
    .registers 5
    .param p1, "preserveWindows"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 5506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relaunch all activities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_20
    if-ltz v0, :cond_30

    .line 5508
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0, v1, p1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5507
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 5510
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method private removeSafeCancellationTransport(Landroid/app/ActivityThread$SafeCancellationTransport;)Landroid/os/CancellationSignal;
    .registers 4
    .param p1, "transport"    # Landroid/app/ActivityThread$SafeCancellationTransport;

    .line 2041
    monitor-enter p0

    .line 2042
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CancellationSignal;

    .line 2043
    .local v0, "cancellation":Landroid/os/CancellationSignal;
    iget-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2044
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/ActivityThread;->mRemoteCancellations:Ljava/util/Map;

    .line 2046
    :cond_14
    monitor-exit p0

    return-object v0

    .line 2047
    .end local v0    # "cancellation":Landroid/os/CancellationSignal;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3959
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3961
    return-void

    .line 3963
    :cond_b
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    .line 3964
    .local v0, "configurations":[Landroid/content/res/Configuration;
    if-nez v0, :cond_18

    .line 3965
    return-void

    .line 3967
    :cond_18
    new-instance v1, Landroid/window/SizeConfigurationBuckets;

    invoke-direct {v1, v0}, Landroid/window/SizeConfigurationBuckets;-><init>([Landroid/content/res/Configuration;)V

    invoke-static {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fputmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SizeConfigurationBuckets;)V

    .line 3968
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/SizeConfigurationBuckets;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityClient;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    .line 3969
    return-void
.end method

.method private reportSplashscreenViewShown(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "view"    # Landroid/window/SplashScreenView;

    .line 4271
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityClient;->reportSplashScreenAttached(Landroid/os/IBinder;)V

    .line 4272
    monitor-enter p0

    .line 4273
    :try_start_8
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_f

    .line 4274
    invoke-virtual {v0, p1, p2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->handOverSplashScreenView(Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    .line 4276
    :cond_f
    monitor-exit p0

    .line 4277
    return-void

    .line 4276
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "onTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5162
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    if-eq v0, p2, :cond_b

    .line 5163
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastReportedTopResumedState:Z

    .line 5164
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->performTopResumedActivityChanged(ZLjava/lang/String;)V

    .line 5166
    :cond_b
    return-void
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 5650
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 5651
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_9

    const-string v1, "[Unknown]"

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_d
    return-object v1
.end method

.method private schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4300
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 4301
    .local v0, "prevState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 4302
    return-void

    .line 4305
    :cond_b
    packed-switch v0, :pswitch_data_1e

    goto :goto_1d

    .line 4313
    :pswitch_f
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4314
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    goto :goto_1d

    .line 4308
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4309
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4310
    nop

    .line 4317
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_16
        :pswitch_f
    .end packed-switch
.end method

.method private schedulePauseWithUserLeavingHint(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4320
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 4321
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v3}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 4324
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 4325
    return-void
.end method

.method private scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 6
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "preserveWindow"    # Z

    .line 5879
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v0, :cond_10

    :cond_a
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_11

    .line 5882
    :cond_10
    return-void

    .line 5884
    :cond_11
    if-eqz p2, :cond_1a

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v0, :cond_1a

    .line 5885
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5887
    :cond_1a
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 5888
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 5889
    return-void
.end method

.method private scheduleResume(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4328
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 4329
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(ZZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 4331
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 4332
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .line 3637
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3638
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .line 3641
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3642
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .line 3649
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3650
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3651
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3652
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 3653
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 3654
    if-eqz p5, :cond_12

    .line 3655
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3657
    :cond_12
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 3658
    return-void
.end method

.method private setupGraphicsSupport(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 6635
    const-string/jumbo v0, "setupGraphicsSupport"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6638
    const-string v0, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 6642
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 6643
    .local v0, "cacheDir":Ljava/io/File;
    const-string v3, "ActivityThread"

    if-eqz v0, :cond_33

    .line 6645
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 6646
    .local v4, "tmpdir":Ljava/lang/String;
    const-string v5, "java.io.tmpdir"

    invoke-static {v5, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6648
    :try_start_25
    const-string v5, "TMPDIR"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2b
    .catch Landroid/system/ErrnoException; {:try_start_25 .. :try_end_2b} :catch_2c

    .line 6651
    goto :goto_32

    .line 6649
    :catch_2c
    move-exception v5

    .line 6650
    .local v5, "ex":Landroid/system/ErrnoException;
    const-string v6, "Unable to initialize $TMPDIR"

    invoke-static {v3, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6652
    .end local v4    # "tmpdir":Ljava/lang/String;
    .end local v5    # "ex":Landroid/system/ErrnoException;
    :goto_32
    goto :goto_38

    .line 6653
    :cond_33
    const-string v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6658
    :goto_38
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 6659
    .local v4, "deviceContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v5

    .line 6660
    .local v5, "codeCacheDir":Ljava/io/File;
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    .line 6661
    .local v6, "deviceCacheDir":Ljava/io/File;
    if-eqz v5, :cond_66

    if-eqz v6, :cond_66

    .line 6663
    :try_start_48
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 6664
    .local v3, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 6665
    .local v7, "packages":[Ljava/lang/String;
    if-eqz v7, :cond_5c

    .line 6666
    invoke-static {v6}, Landroid/graphics/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 6667
    invoke-static {v5}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_5c} :catch_5d

    .line 6672
    .end local v3    # "uid":I
    .end local v7    # "packages":[Ljava/lang/String;
    :cond_5c
    goto :goto_6b

    .line 6669
    :catch_5d
    move-exception v3

    .line 6670
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6671
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6674
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_66
    const-string v7, "Unable to use shader/script cache: missing code-cache directory"

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6680
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v4    # "deviceContext":Landroid/content/Context;
    .end local v5    # "codeCacheDir":Ljava/io/File;
    .end local v6    # "deviceCacheDir":Ljava/io/File;
    :cond_6b
    :goto_6b
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    iget-object v3, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v3}, Landroid/os/GraphicsEnvironment;->setup(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 6681
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6682
    return-void
.end method

.method public static shouldReportChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;IZ)Z
    .registers 11
    .param p0, "currentConfig"    # Landroid/content/res/Configuration;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "sizeBuckets"    # Landroid/window/SizeConfigurationBuckets;
    .param p3, "handledConfigChanges"    # I
    .param p4, "alwaysReportChange"    # Z

    .line 6139
    invoke-static {p0, p1}, Landroid/window/ConfigurationHelper;->shouldUpdateWindowMetricsBounds(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 6140
    return v1

    .line 6143
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v0

    .line 6145
    .local v0, "publicDiff":I
    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 6146
    return v2

    .line 6150
    :cond_10
    if-eqz p4, :cond_13

    .line 6151
    return v1

    .line 6154
    :cond_13
    invoke-static {v0, p0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I

    move-result v3

    .line 6160
    .local v3, "diffWithBucket":I
    if-eqz v3, :cond_1b

    move v4, v3

    goto :goto_1c

    :cond_1b
    move v4, v0

    .line 6164
    .local v4, "diff":I
    :goto_1c
    not-int v5, p3

    and-int/2addr v5, v4

    if-nez v5, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method private suspendAllAndSendVmStart(Landroid/app/ActivityThread$AppBindData;)V
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7083
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7084
    .local v0, "mgr":Landroid/app/IActivityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is suspending. Debugger needs to resume to continue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7088
    :try_start_28
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_40

    .line 7091
    nop

    .line 7093
    invoke-static {}, Landroid/os/Debug;->suspendAllAndSendVmStart()V

    .line 7096
    :try_start_32
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_3a

    .line 7099
    nop

    .line 7100
    return-void

    .line 7097
    :catch_3a
    move-exception v1

    .line 7098
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 7089
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_40
    move-exception v1

    .line 7090
    .restart local v1    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private syncTransferSplashscreenViewTransaction(Landroid/window/SplashScreenView;Landroid/os/IBinder;Landroid/view/View;Landroid/view/SurfaceControl;)V
    .registers 7
    .param p1, "view"    # Landroid/window/SplashScreenView;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "decorView"    # Landroid/view/View;
    .param p4, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4285
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4286
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v0, p4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4288
    invoke-virtual {p3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 4289
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->syncTransferSurfaceOnDraw()V

    .line 4291
    new-instance v1, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Landroid/app/ActivityThread$$ExternalSyntheticLambda5;-><init>(Landroid/app/ActivityThread;Landroid/os/IBinder;Landroid/window/SplashScreenView;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4292
    return-void
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .registers 4

    .line 7950
    invoke-static {}, Landroid/view/ThreadedRenderer;->initForSystemProcess()V

    .line 7951
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 7952
    .local v0, "thread":Landroid/app/ActivityThread;
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread;->attach(ZJ)V

    .line 7953
    return-object v0
.end method

.method private throwRemoteServiceException(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2073
    packed-switch p2, :pswitch_data_4a

    .line 2093
    new-instance v0, Landroid/app/RemoteServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (with unwknown typeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2084
    :pswitch_26
    new-instance v0, Landroid/app/RemoteServiceException$BadUserInitiatedJobNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$BadUserInitiatedJobNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2090
    :pswitch_2c
    new-instance v0, Landroid/app/RemoteServiceException$CrashedByAdbException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$CrashedByAdbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2087
    :pswitch_32
    new-instance v0, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2081
    :pswitch_38
    new-instance v0, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2078
    :pswitch_3e
    new-instance v0, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;

    invoke-direct {v0, p1}, Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2075
    :pswitch_44
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->generateForegroundServiceDidNotStartInTimeException(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method private updateDebugViewAttributeState()Z
    .registers 6

    .line 5491
    sget-boolean v0, Landroid/view/View;->sDebugViewAttributes:Z

    .line 5495
    .local v0, "previousState":Z
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v2, "debug_view_attributes_application_package"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 5497
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_1d

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1d

    .line 5498
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    const-string v1, "<unknown-app>"

    .line 5499
    .local v1, "currentPackage":Ljava/lang/String;
    :goto_1f
    iget-object v2, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 5500
    const-string v3, "debug_view_attributes"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_36

    sget-object v2, Landroid/view/View;->sDebugViewAttributesApplicationPackage:Ljava/lang/String;

    .line 5501
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_36

    :cond_34
    move v2, v4

    goto :goto_37

    :cond_36
    :goto_36
    move v2, v3

    :goto_37
    sput-boolean v2, Landroid/view/View;->sDebugViewAttributes:Z

    .line 5502
    sget-boolean v2, Landroid/view/View;->sDebugViewAttributes:Z

    if-eq v0, v2, :cond_3e

    move v4, v3

    :cond_3e
    return v4
.end method

.method private updateDeviceIdForNonUIContexts(I)V
    .registers 9
    .param p1, "deviceId"    # I

    .line 6175
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 6176
    return-void

    .line 6178
    :cond_4
    iget v0, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    if-ne p1, v0, :cond_9

    .line 6179
    return-void

    .line 6181
    :cond_9
    iput p1, p0, Landroid/app/ActivityThread;->mLastReportedDeviceId:I

    .line 6182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6185
    .local v0, "nonUIContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Context;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6186
    :try_start_13
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6187
    .local v2, "numApps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v2, :cond_2a

    .line 6188
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6187
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 6190
    .end local v3    # "i":I
    :cond_2a
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 6191
    .local v3, "numServices":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    if-ge v4, v3, :cond_47

    .line 6192
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Service;

    .line 6194
    .local v5, "service":Landroid/app/Service;
    invoke-virtual {v5}, Landroid/app/Service;->isUiContext()Z

    move-result v6

    if-nez v6, :cond_44

    .line 6195
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6191
    .end local v5    # "service":Landroid/app/Service;
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 6198
    .end local v2    # "numApps":I
    .end local v3    # "numServices":I
    .end local v4    # "i":I
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_5f

    .line 6199
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 6201
    .local v2, "context":Landroid/content/Context;
    :try_start_58
    invoke-virtual {v2, p1}, Landroid/content/Context;->updateDeviceId(I)V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 6207
    goto :goto_5d

    .line 6202
    :catch_5c
    move-exception v3

    .line 6208
    .end local v2    # "context":Landroid/content/Context;
    :goto_5d
    goto :goto_4c

    .line 6209
    :cond_5e
    return-void

    .line 6198
    :catchall_5f
    move-exception v2

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method public static updateHttpProxy(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 7957
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 7958
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Proxy;->setHttpProxyConfiguration(Landroid/net/ProxyInfo;)V

    .line 7959
    return-void
.end method

.method private updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 16
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 4393
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4394
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_24

    .line 4395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUiTranslationState(): no activity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    return-void

    .line 4398
    :cond_24
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 4400
    return-void
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    .line 5404
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5405
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_38

    .line 5406
    const/4 v1, 0x1

    if-eqz p2, :cond_24

    .line 5407
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v2, :cond_38

    .line 5408
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5409
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5410
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_38

    .line 5411
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    goto :goto_38

    .line 5415
    :cond_24
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_38

    .line 5416
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5417
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5418
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5422
    :cond_38
    :goto_38
    return-void
.end method

.method private updateVmProcessState(I)V
    .registers 4
    .param p1, "processState"    # I

    .line 3599
    invoke-static {p1}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3600
    const/4 v0, 0x1

    goto :goto_9

    .line 3601
    :cond_8
    const/4 v0, 0x0

    :goto_9
    nop

    .line 3602
    .local v0, "state":I
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->updateProcessState(I)V

    .line 3603
    return-void
.end method

.method private waitForDebugger(Landroid/app/ActivityThread$AppBindData;)V
    .registers 5
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .line 7062
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7063
    .local v0, "mgr":Landroid/app/IActivityManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is waiting for the debugger ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7067
    :try_start_28
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_40

    .line 7070
    nop

    .line 7072
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 7075
    :try_start_32
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_3a

    .line 7078
    nop

    .line 7079
    return-void

    .line 7076
    :catch_3a
    move-exception v1

    .line 7077
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 7068
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_40
    move-exception v1

    .line 7069
    .restart local v1    # "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .registers 14
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 7457
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7458
    :try_start_3
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 7459
    .local v1, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7460
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    const/4 v3, 0x0

    if-nez v2, :cond_15

    .line 7461
    monitor-exit v0

    return-object v3

    .line 7464
    :cond_15
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 7465
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 7466
    .local v5, "jBinder":Landroid/os/IBinder;
    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 7469
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acquiring provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": existing object\'s process dead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7471
    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 7472
    monitor-exit v0

    return-object v3

    .line 7477
    :cond_4f
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7478
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_5c

    .line 7479
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 7481
    :cond_5c
    monitor-exit v0

    return-object v4

    .line 7482
    .end local v1    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    .end local v5    # "jBinder":Landroid/os/IBinder;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .registers 23
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .line 7312
    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v9

    .line 7313
    .local v9, "provider":Landroid/content/IContentProvider;
    if-eqz v9, :cond_b

    .line 7314
    return-object v9

    .line 7323
    :cond_b
    const/4 v10, 0x0

    .line 7324
    .local v10, "holder":Landroid/app/ContentProviderHolder;
    move-object/from16 v15, p0

    invoke-direct {v15, v7, v8}, Landroid/app/ActivityThread;->getGetProviderKey(Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v14

    .line 7326
    .local v14, "key":Landroid/app/ActivityThread$ProviderKey;
    const/4 v11, 0x0

    :try_start_13
    monitor-enter v14
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_14} :catch_d8
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_14} :catch_6d
    .catchall {:try_start_13 .. :try_end_14} :catchall_69

    .line 7327
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 7328
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7327
    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_62

    move-object v1, v0

    .line 7331
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .local v1, "holder":Landroid/app/ContentProviderHolder;
    if-eqz v1, :cond_54

    :try_start_2d
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_54

    iget-boolean v0, v1, Landroid/app/ContentProviderHolder;->mLocal:Z

    if-nez v0, :cond_54

    .line 7332
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_5f

    .line 7333
    :try_start_38
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    if-eqz v0, :cond_3d

    goto :goto_45

    .line 7338
    :cond_3d
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    sget v3, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 7340
    :goto_45
    iget-object v0, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    move-object v1, v0

    .line 7341
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_51

    .line 7342
    if-eqz v1, :cond_54

    :try_start_4b
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_5f

    if-nez v0, :cond_54

    .line 7344
    const/4 v1, 0x0

    goto :goto_54

    .line 7341
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v9    # "provider":Landroid/content/IContentProvider;
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    :try_start_53
    throw v0

    .line 7347
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v9    # "provider":Landroid/content/IContentProvider;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :cond_54
    :goto_54
    monitor-exit v14
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_5f

    .line 7354
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7355
    :try_start_58
    iput-object v11, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 7356
    monitor-exit v2

    goto :goto_75

    :catchall_5c
    move-exception v0

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5c

    throw v0

    .line 7347
    :catchall_5f
    move-exception v0

    move-object v10, v1

    goto :goto_63

    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    :catchall_62
    move-exception v0

    :goto_63
    :try_start_63
    monitor-exit v14
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    .end local v9    # "provider":Landroid/content/IContentProvider;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    :try_start_64
    throw v0
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_65} :catch_65
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_65} :catch_6d
    .catchall {:try_start_64 .. :try_end_65} :catchall_69

    .line 7348
    .restart local v9    # "provider":Landroid/content/IContentProvider;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :catch_65
    move-exception v0

    move-object v4, v14

    goto/16 :goto_da

    .line 7354
    :catchall_69
    move-exception v0

    move-object v4, v14

    goto/16 :goto_e0

    .line 7350
    :catch_6d
    move-exception v0

    .line 7351
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .line 7354
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    iget-object v2, v14, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 7355
    :try_start_72
    iput-object v11, v14, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 7356
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_d2

    .line 7357
    :goto_75
    nop

    .line 7358
    if-nez v1, :cond_ba

    .line 7359
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 7360
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 7362
    :cond_9b
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (user not unlocked)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7364
    :goto_b9
    return-object v11

    .line 7369
    :cond_ba
    iget-object v0, v1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v2, 0x1

    iget-boolean v3, v1, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v1

    move-object v4, v14

    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .local v4, "key":Landroid/app/ActivityThread$ProviderKey;
    move-object v14, v0

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, p4

    invoke-direct/range {v11 .. v17}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v0

    .line 7371
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .local v0, "holder":Landroid/app/ContentProviderHolder;
    iget-object v1, v0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object v1

    .line 7356
    .end local v0    # "holder":Landroid/app/ContentProviderHolder;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v1    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catchall_d2
    move-exception v0

    move-object v4, v14

    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :goto_d4
    :try_start_d4
    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d6

    throw v0

    :catchall_d6
    move-exception v0

    goto :goto_d4

    .line 7348
    .end local v1    # "holder":Landroid/app/ContentProviderHolder;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catch_d8
    move-exception v0

    move-object v4, v14

    .line 7349
    .end local v14    # "key":Landroid/app/ActivityThread$ProviderKey;
    .local v0, "ex":Landroid/os/RemoteException;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :goto_da
    :try_start_da
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v9    # "provider":Landroid/content/IContentProvider;
    .end local v10    # "holder":Landroid/app/ContentProviderHolder;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "c":Landroid/content/Context;
    .end local p2    # "auth":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "stable":Z
    throw v1
    :try_end_df
    .catchall {:try_start_da .. :try_end_df} :catchall_df

    .line 7354
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    .restart local v9    # "provider":Landroid/content/IContentProvider;
    .restart local v10    # "holder":Landroid/app/ContentProviderHolder;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "c":Landroid/content/Context;
    .restart local p2    # "auth":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "stable":Z
    :catchall_df
    move-exception v0

    :goto_e0
    iget-object v1, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7355
    :try_start_e3
    iput-object v11, v4, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 7356
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    .line 7357
    throw v0

    .line 7356
    :catchall_e7
    move-exception v0

    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v0
.end method

.method final appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 7653
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7654
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    .line 7655
    .local v1, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v1, :cond_1f

    .line 7657
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 7658
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_21

    .line 7661
    goto :goto_1f

    .line 7659
    :catch_19
    move-exception v2

    .line 7660
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "provider":Landroid/os/IBinder;
    throw v3

    .line 7663
    .end local v1    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "provider":Landroid/os/IBinder;
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 7664
    return-void

    .line 7663
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw v1
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 6168
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6169
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 6170
    monitor-exit v0

    .line 6171
    return-void

    .line 6170
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public collectComponentCallbacks(Z)Ljava/util/ArrayList;
    .registers 9
    .param p1, "includeUiContexts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .line 5985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5988
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    if-nez v1, :cond_wlguard_rm

    return-object v0

    :cond_wlguard_rm
    monitor-enter v1

    .line 5989
    :try_start_8
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5990
    .local v2, "NAPP":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_1f

    .line 5991
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5990
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 5993
    .end local v3    # "i":I
    :cond_1f
    if-eqz p1, :cond_41

    .line 5994
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_29
    if-ltz v3, :cond_41

    .line 5995
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5996
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_3e

    iget-boolean v5, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_3e

    .line 5997
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5994
    .end local v4    # "a":Landroid/app/Activity;
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 6001
    .end local v3    # "i":I
    :cond_41
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 6002
    .local v3, "NSVC":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_48
    if-ge v4, v3, :cond_5e

    .line 6003
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Service;

    .line 6006
    .local v5, "service":Landroid/app/Service;
    if-nez p1, :cond_58

    instance-of v6, v5, Landroid/window/WindowProviderService;

    if-nez v6, :cond_5b

    .line 6007
    :cond_58
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6002
    .end local v5    # "service":Landroid/app/Service;
    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 6010
    .end local v2    # "NAPP":I
    .end local v3    # "NSVC":I
    .end local v4    # "i":I
    :cond_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_80

    .line 6011
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 6012
    :try_start_62
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 6013
    .local v1, "NPRV":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_69
    if-ge v3, v1, :cond_7b

    .line 6014
    iget-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6013
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 6016
    .end local v1    # "NPRV":I
    .end local v3    # "i":I
    :cond_7b
    monitor-exit v2

    .line 6018
    return-object v0

    .line 6016
    :catchall_7d
    move-exception v1

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_62 .. :try_end_7f} :catchall_7d

    throw v1

    .line 6010
    :catchall_80
    move-exception v2

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v2
.end method

.method final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .registers 10
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;

    .line 7573
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7574
    :try_start_3
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v1, :cond_9

    .line 7580
    monitor-exit v0

    return-void

    .line 7586
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7588
    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 7589
    .local v2, "jBinder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7590
    .local v3, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v3, p1, :cond_23

    .line 7591
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7594
    :cond_23
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_2b
    if-ltz v4, :cond_45

    .line 7595
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7596
    .local v5, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 7597
    .local v6, "myBinder":Landroid/os/IBinder;
    if-ne v6, v2, :cond_42

    .line 7598
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 7594
    .end local v5    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v6    # "myBinder":Landroid/os/IBinder;
    :cond_42
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 7601
    .end local v2    # "jBinder":Landroid/os/IBinder;
    .end local v3    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "i":I
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_54

    .line 7608
    :try_start_46
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_51} :catch_52

    .line 7612
    goto :goto_53

    .line 7610
    :catch_52
    move-exception v0

    .line 7613
    :goto_53
    return-void

    .line 7601
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public countLaunchingActivities(I)V
    .registers 3
    .param p1, "num"    # I

    .line 3607
    iget-object v0, p0, Landroid/app/ActivityThread;->mNumLaunchingActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 3608
    return-void
.end method

.method doGcIfNeeded()V
    .registers 2

    .line 2962
    const-string v0, "bg"

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->doGcIfNeeded(Ljava/lang/String;)V

    .line 2963
    return-void
.end method

.method doGcIfNeeded(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 2966
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2967
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2970
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_15

    .line 2972
    invoke-static {p1}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 2974
    :cond_15
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .line 7262
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 7263
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_19

    .line 7265
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 7270
    :cond_19
    :try_start_19
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_2a

    .line 7273
    nop

    .line 7274
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mInstrumentingWithoutRestart:Z

    if-eqz v1, :cond_29

    .line 7275
    const/16 v1, 0xab

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 7277
    :cond_29
    return-void

    .line 7271
    :catch_2a
    move-exception v1

    .line 7272
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getActivitiesToBeDestroyed()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .line 5656
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    return-object v0
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3547
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3548
    .local v0, "activityRecord":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3553
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2

    .line 2855
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .registers 2

    .line 2825
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 3558
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getCoreSettings()Landroid/os/Bundle;
    .registers 3

    .line 7972
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7973
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    .line 7974
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 2849
    iget-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method getFloatCoreSetting(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 7999
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8000
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    .line 8001
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    monitor-exit v0

    return v1

    .line 8003
    :cond_d
    monitor-exit v0

    return p2

    .line 8004
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 2621
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .line 2831
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 7978
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7979
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    .line 7980
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 7982
    :cond_d
    monitor-exit v0

    return p2

    .line 7983
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 2845
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .registers 15
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 2679
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 2680
    .local v0, "includeCode":Z
    :goto_9
    if-eqz v0, :cond_29

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_29

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_29

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_27

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2682
    invoke-static {v3, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_27
    move v3, v2

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    move v10, v3

    .line 2684
    .local v10, "securityViolation":Z
    if-eqz v0, :cond_34

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p3

    if-eqz v3, :cond_34

    move v9, v2

    goto :goto_35

    :cond_34
    move v9, v1

    .line 2685
    .local v9, "registerPackage":Z
    :goto_35
    and-int/lit8 v1, p3, 0x3

    if-ne v1, v2, :cond_99

    .line 2688
    if-eqz v10, :cond_99

    .line 2689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting code from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (with uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2691
    .local v1, "msg":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v4, :cond_93

    .line 2692
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to be run in process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2696
    :cond_93
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2699
    .end local v1    # "msg":Ljava/lang/String;
    :cond_99
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, v10

    move v8, v0

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v1

    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .line 2627
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 2632
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq v0, p4, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2633
    .local v0, "differentUser":Z
    :goto_9
    nop

    .line 2637
    if-gez p4, :cond_11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, p4

    .line 2633
    :goto_12
    const-wide/32 v2, 0x10000400

    invoke-static {p1, v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2638
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 2640
    if-eqz v0, :cond_20

    .line 2642
    const/4 v3, 0x0

    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_35

    .line 2643
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_20
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2d

    .line 2644
    :try_start_24
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_35

    .line 2646
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2d
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 2649
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_35
    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk;

    goto :goto_40

    :cond_3f
    move-object v5, v4

    .line 2650
    .local v5, "packageInfo":Landroid/app/LoadedApk;
    :goto_40
    if-eqz v1, :cond_99

    if-eqz v5, :cond_99

    .line 2651
    invoke-static {v5, v1}, Landroid/app/ActivityThread;->isLoadedApkResourceDirsUpToDate(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 2652
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2653
    .local v4, "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v1, v4}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2654
    invoke-virtual {v5, v1, v4}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 2657
    .end local v4    # "oldPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_55
    invoke-virtual {v5}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v4

    if-eqz v4, :cond_97

    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_60

    goto :goto_97

    .line 2659
    :cond_60
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting code from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to be run in process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "differentUser":Z
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local p3    # "flags":I
    .end local p4    # "userId":I
    throw v4

    .line 2665
    .restart local v0    # "differentUser":Z
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p3    # "flags":I
    .restart local p4    # "userId":I
    :cond_97
    :goto_97
    monitor-exit v2

    return-object v5

    .line 2667
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v5    # "packageInfo":Landroid/app/LoadedApk;
    :cond_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_24 .. :try_end_9a} :catchall_a2

    .line 2669
    if-eqz v1, :cond_a1

    .line 2670
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v2

    return-object v2

    .line 2673
    :cond_a1
    return-object v4

    .line 2667
    :catchall_a2
    move-exception v3

    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v3
.end method

.method public getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;
    .registers 9
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 2711
    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .registers 10
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 2706
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    .line 2860
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .registers 2

    .line 2840
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getStringCoreSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 7990
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7991
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    .line 7992
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 7994
    :cond_d
    monitor-exit v0

    return-object p2

    .line 7995
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .registers 2

    .line 2866
    monitor-enter p0

    .line 2867
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_b

    .line 2868
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 2870
    :cond_b
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 2871
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getSystemUiContext()Landroid/app/ContextImpl;
    .registers 2

    .line 2876
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSystemUiContext(I)Landroid/app/ContextImpl;
    .registers 4
    .param p1, "displayId"    # I

    .line 2886
    monitor-enter p0

    .line 2887
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    if-nez v0, :cond_c

    .line 2888
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    .line 2890
    :cond_c
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    .line 2891
    .local v0, "systemUiContext":Landroid/app/ContextImpl;
    if-nez v0, :cond_24

    .line 2892
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;I)Landroid/app/ContextImpl;

    move-result-object v1

    move-object v0, v1

    .line 2893
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2895
    :cond_24
    monitor-exit p0

    return-object v0

    .line 2896
    .end local v0    # "systemUiContext":Landroid/app/ContextImpl;
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public getSystemUiContextNoCreate()Landroid/app/ContextImpl;
    .registers 3

    .line 2902
    monitor-enter p0

    .line 2903
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    if-nez v0, :cond_8

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 2904
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 2905
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 21
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "legacyOverlayDirs"    # [Ljava/lang/String;
    .param p4, "overlayPaths"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 2614
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 2615
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    .line 2616
    invoke-virtual/range {p6 .. p6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const/4 v12, 0x0

    .line 2614
    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v12}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
    .registers 2

    .line 3629
    iget-object v0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object v0
.end method

.method public handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)V
    .registers 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 6321
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)V

    .line 6328
    return-void
.end method

.method handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)V
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I
    .param p4, "alwaysReportChange"    # Z

    .line 6342
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6343
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 6344
    .local v1, "pendingOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p2, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 6350
    monitor-exit v0

    return-void

    .line 6352
    :cond_15
    iget-object v2, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6353
    nop

    .end local v1    # "pendingOverrideConfig":Landroid/content/res/Configuration;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_74

    .line 6355
    const/4 v0, -0x1

    if-ne p3, v0, :cond_27

    .line 6358
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result p3

    .line 6360
    :cond_27
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 6361
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplayId()I

    move-result v0

    .line 6360
    invoke-static {v0, p3}, Landroid/window/ConfigurationHelper;->isDifferentDisplay(II)Z

    move-result v0

    .line 6362
    .local v0, "movedToDifferentDisplay":Z
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_40

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_40

    if-nez v0, :cond_40

    .line 6369
    return-void

    .line 6373
    :cond_40
    iput-object p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 6374
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_51

    .line 6375
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    .line 6383
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    :goto_52
    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 6384
    invoke-virtual {v2}, Landroid/app/ConfigurationController;->getCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 6385
    if-eqz v0, :cond_5c

    move v3, p3

    goto :goto_62

    :cond_5c
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getDisplayId()I

    move-result v3

    .line 6383
    :goto_62
    invoke-direct {p0, p1, v2, v3, p4}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6389
    .local v2, "reportedConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_70

    .line 6390
    if-eqz v0, :cond_6d

    .line 6391
    invoke-virtual {v1, p3, v2}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 6393
    :cond_6d
    invoke-virtual {v1, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 6395
    :cond_70
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 6396
    return-void

    .line 6353
    .end local v0    # "movedToDifferentDisplay":Z
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "reportedConfig":Landroid/content/res/Configuration;
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 6271
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 6272
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 6273
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    goto :goto_18

    :cond_17
    move-object v3, v2

    .line 6274
    .local v3, "apk":Landroid/app/LoadedApk;
    :goto_18
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v1, v4

    .line 6275
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    :cond_2b
    move-object v1, v2

    .line 6276
    .local v1, "resApk":Landroid/app/LoadedApk;
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_5c

    .line 6278
    if-eqz v3, :cond_3e

    .line 6279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6280
    .local v0, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6281
    invoke-virtual {v3, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6283
    .end local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3e
    if-eqz v1, :cond_4f

    .line 6284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6285
    .restart local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6286
    invoke-virtual {v1, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6289
    .end local v0    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4f
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 6291
    :try_start_52
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 6292
    monitor-exit v2

    .line 6293
    return-void

    .line 6292
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw v0

    .line 6276
    .end local v1    # "resApk":Landroid/app/LoadedApk;
    .end local v3    # "apk":Landroid/app/LoadedApk;
    :catchall_5c
    move-exception v1

    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public handleAttachSplashScreenView(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .param p3, "startingWindowLeash"    # Landroid/view/SurfaceControl;

    .line 4232
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorView;

    .line 4233
    .local v0, "decorView":Lcom/android/internal/policy/DecorView;
    if-eqz p2, :cond_10

    if-eqz v0, :cond_10

    .line 4234
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/app/ActivityThread;->createSplashScreen(Landroid/app/ActivityThread$ActivityClientRecord;Lcom/android/internal/policy/DecorView;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    goto :goto_17

    .line 4237
    :cond_10
    const-string v1, "ActivityThread"

    const-string v2, "handleAttachSplashScreenView failed, unable to attach"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4239
    :goto_17
    return-void
.end method

.method public handleConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "deviceId"    # I

    .line 6213
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6214
    invoke-direct {p0, p2}, Landroid/app/ActivityThread;->updateDeviceIdForNonUIContexts(I)V

    .line 6217
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6218
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v0}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6219
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 6221
    return-void
.end method

.method public handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V
    .registers 15
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5662
    invoke-virtual/range {p0 .. p5}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V

    .line 5663
    invoke-static {p1, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5664
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 5665
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5666
    .local v1, "v":Landroid/view/View;
    const/4 v2, 0x1

    const-string v3, "Activity"

    if-eqz v1, :cond_7a

    .line 5667
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v4, :cond_20

    .line 5668
    iget v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v4, v2

    iput v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5670
    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5671
    .local v4, "wtoken":Landroid/os/IBinder;
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_47

    .line 5672
    iget-boolean v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v5, :cond_3b

    .line 5674
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    .line 5675
    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 5679
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->clearContentView()V

    goto :goto_47

    .line 5681
    :cond_3b
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    .line 5682
    .local v5, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v5, :cond_44

    .line 5685
    invoke-virtual {v5, v6}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 5687
    :cond_44
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5690
    .end local v5    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_47
    :goto_47
    if-eqz v4, :cond_5f

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v5, :cond_5f

    .line 5691
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5692
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 5691
    invoke-virtual {v5, v4, v7, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 5693
    :cond_5f
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v5, :cond_76

    .line 5698
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5699
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 5698
    invoke-virtual {v5, v7, v1, v8, v3}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 5701
    :cond_76
    :goto_76
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5703
    .end local v4    # "wtoken":Landroid/os/IBinder;
    :cond_7a
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v4, :cond_91

    .line 5710
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5711
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5710
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5718
    :cond_91
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 5719
    .local v4, "c":Landroid/content/Context;
    instance-of v5, v4, Landroid/app/ContextImpl;

    if-eqz v5, :cond_ab

    .line 5720
    move-object v5, v4

    check-cast v5, Landroid/app/ContextImpl;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 5722
    :cond_ab
    if-eqz p2, :cond_bb

    .line 5723
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Landroid/app/ActivityClient;->activityDestroyed(Landroid/os/IBinder;)V

    .line 5724
    iget-object v3, p0, Landroid/app/ActivityThread;->mNewActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5726
    :cond_bb
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5727
    return-void
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 19
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 6470
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 6471
    .local v4, "hasPkgInfo":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_140

    :pswitch_c
    goto/16 :goto_13b

    .line 6502
    :pswitch_e
    if-nez v3, :cond_12

    .line 6503
    goto/16 :goto_13b

    .line 6506
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 6508
    .local v7, "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v8

    .line 6509
    :try_start_1b
    array-length v0, v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_e8

    sub-int/2addr v0, v6

    move v9, v4

    move v4, v0

    .local v4, "i":I
    .local v9, "hasPkgInfo":Z
    :goto_1f
    if-ltz v4, :cond_d0

    .line 6510
    :try_start_21
    aget-object v0, v3, v4

    move-object v10, v0

    .line 6511
    .local v10, "packageName":Ljava/lang/String;
    iget-object v0, v1, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 6512
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    const/4 v11, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/LoadedApk;

    goto :goto_37

    :cond_36
    move-object v12, v11

    .line 6513
    .local v12, "pkgInfo":Landroid/app/LoadedApk;
    :goto_37
    if-eqz v12, :cond_3d

    .line 6514
    const/4 v9, 0x1

    move v11, v9

    move-object v9, v0

    goto :goto_57

    .line 6516
    :cond_3d
    iget-object v13, v1, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    move-object v0, v13

    .line 6517
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/LoadedApk;
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_e5

    :cond_4e
    move-object v12, v11

    .line 6518
    if-eqz v12, :cond_55

    .line 6519
    const/4 v9, 0x1

    move v11, v9

    move-object v9, v0

    goto :goto_57

    .line 6518
    :cond_55
    move v11, v9

    move-object v9, v0

    .line 6526
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .local v9, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .local v11, "hasPkgInfo":Z
    :goto_57
    if-eqz v12, :cond_ca

    .line 6527
    :try_start_59
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_c7

    .line 6529
    :try_start_5c
    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 6533
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    .line 6530
    const-wide/16 v14, 0x400

    invoke-interface {v0, v10, v14, v15, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v13, v0

    .line 6535
    .local v13, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_9a

    .line 6536
    iget-object v0, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 6537
    .local v14, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6538
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_99

    .line 6539
    iget-object v15, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v13, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6540
    iput-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 6542
    .end local v14    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_99
    goto :goto_7b

    .line 6545
    :cond_9a
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {v12}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v5

    move-object v14, v0

    .line 6547
    .local v14, "oldResDirs":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 6548
    .local v15, "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v1, v0, v15}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6549
    invoke-virtual {v12, v13, v15}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 6551
    iget-object v6, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_b6} :catch_c5
    .catchall {:try_start_5c .. :try_end_b6} :catchall_c7

    .line 6553
    :try_start_b6
    iget-object v0, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0, v14, v13}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 6555
    iget-object v0, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->applyAllPendingAppInfoUpdates()V

    .line 6556
    monitor-exit v6

    .line 6558
    .end local v13    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "oldResDirs":[Ljava/lang/String;
    .end local v15    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_ca

    .line 6556
    .restart local v13    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "oldResDirs":[Ljava/lang/String;
    .restart local v15    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_c2
    move-exception v0

    monitor-exit v6
    :try_end_c4
    .catchall {:try_start_b6 .. :try_end_c4} :catchall_c2

    .end local v4    # "i":I
    .end local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "hasPkgInfo":Z
    .end local v12    # "pkgInfo":Landroid/app/LoadedApk;
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "cmd":I
    .end local p2    # "packages":[Ljava/lang/String;
    :try_start_c4
    throw v0
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c5} :catch_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c7

    .line 6557
    .end local v13    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "oldResDirs":[Ljava/lang/String;
    .end local v15    # "oldPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "hasPkgInfo":Z
    .restart local v12    # "pkgInfo":Landroid/app/LoadedApk;
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "cmd":I
    .restart local p2    # "packages":[Ljava/lang/String;
    :catch_c5
    move-exception v0

    goto :goto_ca

    .line 6561
    .end local v4    # "i":I
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v12    # "pkgInfo":Landroid/app/LoadedApk;
    :catchall_c7
    move-exception v0

    move v4, v11

    goto :goto_e9

    .line 6509
    .restart local v4    # "i":I
    :cond_ca
    :goto_ca
    add-int/lit8 v4, v4, -0x1

    move v9, v11

    const/4 v6, 0x1

    goto/16 :goto_1f

    .line 6561
    .end local v4    # "i":I
    .end local v11    # "hasPkgInfo":Z
    .local v9, "hasPkgInfo":Z
    :cond_d0
    :try_start_d0
    monitor-exit v8
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_e5

    .line 6564
    :try_start_d1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/String;

    .line 6565
    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 6564
    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_e0} :catch_e1

    .line 6567
    goto :goto_e3

    .line 6566
    :catch_e1
    move-exception v0

    .line 6569
    nop

    .line 6572
    .end local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e3
    move v4, v9

    goto :goto_13b

    .line 6561
    .restart local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_e5
    move-exception v0

    move v4, v9

    goto :goto_e9

    .end local v9    # "hasPkgInfo":Z
    .local v4, "hasPkgInfo":Z
    :catchall_e8
    move-exception v0

    :goto_e9
    :try_start_e9
    monitor-exit v8
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v0

    .line 6475
    .end local v7    # "packagesHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_eb
    if-nez v2, :cond_ee

    const/4 v5, 0x1

    .line 6476
    .local v5, "killApp":Z
    :cond_ee
    if-nez v3, :cond_f1

    .line 6477
    goto :goto_13b

    .line 6479
    :cond_f1
    iget-object v6, v1, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6

    .line 6480
    :try_start_f4
    array-length v0, v3

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    .local v0, "i":I
    :goto_f7
    if-ltz v0, :cond_136

    .line 6481
    if-nez v4, :cond_123

    .line 6482
    iget-object v7, v1, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 6483
    .local v7, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v7, :cond_10f

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_10f

    .line 6484
    const/4 v4, 0x1

    goto :goto_123

    .line 6486
    :cond_10f
    iget-object v8, v1, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v7, v8

    .line 6487
    if-eqz v7, :cond_123

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_123

    .line 6488
    const/4 v4, 0x1

    .line 6492
    .end local v7    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_123
    :goto_123
    if-eqz v5, :cond_133

    .line 6493
    iget-object v7, v1, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6494
    iget-object v7, v1, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6480
    :cond_133
    add-int/lit8 v0, v0, -0x1

    goto :goto_f7

    .line 6497
    .end local v0    # "i":I
    :cond_136
    monitor-exit v6

    .line 6498
    goto :goto_13b

    .line 6497
    :catchall_138
    move-exception v0

    monitor-exit v6
    :try_end_13a
    .catchall {:try_start_f4 .. :try_end_13a} :catchall_138

    throw v0

    .line 6572
    .end local v5    # "killApp":Z
    :goto_13b
    invoke-static {v2, v3, v4}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 6573
    return-void

    nop

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_c
        :pswitch_eb
        :pswitch_e
    .end packed-switch
.end method

.method public handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .line 4163
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4165
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    filled-new-array {p1}, [Landroid/content/pm/ProviderInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 4167
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4168
    nop

    .line 4169
    return-void

    .line 4167
    :catchall_16
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4168
    throw v1
.end method

.method public handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "deviceId"    # I
    .param p4, "customIntent"    # Landroid/content/Intent;

    .line 3914
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3915
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3917
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v1, :cond_16

    .line 3918
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 3919
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 3923
    :cond_16
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 3924
    invoke-direct {p0, p3}, Landroid/app/ActivityThread;->updateDeviceIdForNonUIContexts(I)V

    .line 3930
    sget-boolean v1, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    if-eqz v1, :cond_2e

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2e

    .line 3932
    invoke-static {}, Landroid/graphics/HardwareRenderer;->preload()V

    .line 3934
    :cond_2e
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 3937
    invoke-static {}, Landroid/os/GraphicsEnvironment;->hintActivityLaunch()V

    .line 3939
    invoke-direct {p0, p1, p4}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    .line 3941
    .local v1, "a":Landroid/app/Activity;
    if-eqz v1, :cond_5e

    .line 3942
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 3943
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 3944
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_68

    if-eqz p2, :cond_68

    .line 3945
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/app/servertransaction/PendingTransactionActions;->setOldState(Landroid/os/Bundle;)V

    .line 3946
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setRestoreInstanceState(Z)V

    .line 3947
    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setCallOnPostCreate(Z)V

    goto :goto_68

    .line 3951
    :cond_5e
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 3955
    :cond_68
    :goto_68
    return-object v1
.end method

.method final handleLowMemory()V
    .registers 5

    .line 6576
    nop

    .line 6577
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 6579
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6580
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_19

    .line 6581
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 6580
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6585
    .end local v2    # "i":I
    :cond_19
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2b

    .line 6586
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v2

    .line 6587
    .local v2, "sqliteReleased":I
    const v3, 0x124fb

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6591
    .end local v2    # "sqliteReleased":I
    :cond_2b
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 6594
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 6596
    const-string/jumbo v2, "mem"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 6597
    return-void
.end method

.method public handleNewIntent(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .registers 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .line 3985
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 3986
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3987
    return-void
.end method

.method public handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZIZLandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "autoEnteringPip"    # Z
    .param p6, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p7, "reason"    # Ljava/lang/String;

    .line 5172
    if-eqz p3, :cond_5

    .line 5173
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5176
    :cond_5
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v1, p4

    iput v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5177
    const/4 v0, 0x1

    if-eqz p5, :cond_13

    .line 5180
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mIsInPictureInPictureMode:Z

    .line 5182
    :cond_13
    invoke-direct {p0, p1, p2, p7, p6}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    .line 5185
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5186
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 5188
    :cond_1f
    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5189
    return-void
.end method

.method public handlePictureInPictureRequested(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 3
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4194
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onPictureInPictureRequested()Z

    move-result v0

    .line 4195
    .local v0, "receivedByApp":Z
    if-nez v0, :cond_b

    .line 4201
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->schedulePauseWithUserLeaveHintAndReturnToCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4203
    :cond_b
    return-void
.end method

.method public handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 4208
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 4209
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 8
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 6399
    if-eqz p1, :cond_3b

    .line 6401
    nop

    .line 6403
    :try_start_3
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 6404
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_d} :catch_14
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 6411
    nop

    :goto_e
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 6412
    goto :goto_41

    .line 6411
    :catchall_12
    move-exception v0

    goto :goto_37

    .line 6407
    :catch_14
    move-exception v0

    .line 6408
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_15
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_12

    .line 6411
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_e

    :goto_37
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 6412
    throw v0

    .line 6414
    :cond_3b
    nop

    .line 6416
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 6420
    :goto_41
    return-void
.end method

.method public handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 18
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5783
    move-object v10, p0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5784
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5786
    const/4 v1, 0x0

    .line 5791
    .local v1, "configChanges":I
    iget-object v2, v10, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 5792
    :try_start_b
    iget-object v3, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_cf

    .line 5793
    .local v3, "N":I
    move-object/from16 v4, p1

    :try_start_13
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_cd

    .line 5794
    .local v5, "token":Landroid/os/IBinder;
    const/4 v4, 0x0

    .line 5795
    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v4, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v6, 0x0

    move v12, v1

    move-object v11, v4

    .end local v1    # "configChanges":I
    .end local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v6, "i":I
    .local v11, "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v12, "configChanges":I
    :goto_19
    if-ge v6, v3, :cond_46

    .line 5796
    :try_start_1b
    iget-object v1, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5797
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_41

    if-ne v4, v5, :cond_3f

    .line 5798
    move-object v4, v1

    .line 5799
    .end local v11    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_28
    iget v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_3b

    or-int/2addr v7, v12

    .line 5800
    .end local v12    # "configChanges":I
    .local v7, "configChanges":I
    :try_start_2b
    iget-object v8, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_37

    .line 5801
    add-int/lit8 v6, v6, -0x1

    .line 5802
    add-int/lit8 v3, v3, -0x1

    move-object v11, v4

    move v12, v7

    goto :goto_3f

    .line 5814
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "N":I
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v6    # "i":I
    :catchall_37
    move-exception v0

    move v1, v7

    goto/16 :goto_d2

    .end local v7    # "configChanges":I
    .restart local v12    # "configChanges":I
    :catchall_3b
    move-exception v0

    move v1, v12

    goto/16 :goto_d2

    .line 5795
    .end local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v3    # "N":I
    .restart local v5    # "token":Landroid/os/IBinder;
    .restart local v6    # "i":I
    .restart local v11    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3f
    :goto_3f
    add-int/2addr v6, v0

    goto :goto_19

    .line 5814
    .end local v3    # "N":I
    .end local v5    # "token":Landroid/os/IBinder;
    .end local v6    # "i":I
    :catchall_41
    move-exception v0

    move-object v4, v11

    move v1, v12

    goto/16 :goto_d2

    .line 5806
    .restart local v3    # "N":I
    .restart local v5    # "token":Landroid/os/IBinder;
    :cond_46
    if-nez v11, :cond_4a

    .line 5808
    :try_start_48
    monitor-exit v2

    return-void

    .line 5814
    .end local v3    # "N":I
    .end local v5    # "token":Landroid/os/IBinder;
    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_41

    .line 5816
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1, v0}, Landroid/app/ConfigurationController;->getPendingConfiguration(Z)Landroid/content/res/Configuration;

    move-result-object v1

    .line 5818
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput-object v2, v10, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 5820
    iget-object v3, v11, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_7e

    .line 5824
    iget-object v3, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 5825
    .local v3, "config":Landroid/content/res/Configuration;
    if-eqz v3, :cond_70

    iget-object v4, v11, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5826
    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_7e

    iget-object v4, v11, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5827
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_7e

    .line 5828
    :cond_70
    if-eqz v1, :cond_7a

    iget-object v4, v11, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5829
    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 5830
    :cond_7a
    iget-object v1, v11, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    move-object v13, v1

    goto :goto_7f

    .line 5839
    .end local v3    # "config":Landroid/content/res/Configuration;
    :cond_7e
    move-object v13, v1

    .end local v1    # "changedConfig":Landroid/content/res/Configuration;
    .local v13, "changedConfig":Landroid/content/res/Configuration;
    :goto_7f
    if-eqz v13, :cond_9d

    .line 5840
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    iget v3, v13, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v3}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 5841
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1, v13, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 5844
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getCurDefaultDisplayDpi()I

    move-result v1

    iput v1, v10, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5845
    iget-object v1, v10, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v1}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, v10, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5848
    :cond_9d
    iget-object v1, v10, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, v11, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5850
    .local v14, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v14, :cond_ab

    .line 5851
    return-void

    .line 5854
    :cond_ab
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, v12

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5855
    iget-boolean v1, v11, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    iput-boolean v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5857
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 5859
    iget-object v4, v11, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v5, v11, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-boolean v7, v11, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iget-object v8, v11, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    const-string v9, "handleRelaunchActivity"

    move-object v1, p0

    move-object v2, v14

    move v3, v12

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread;->handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V

    .line 5861
    return-void

    .line 5814
    .end local v11    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v12    # "configChanges":I
    .end local v13    # "changedConfig":Landroid/content/res/Configuration;
    .end local v14    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v1, "configChanges":I
    .restart local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_cd
    move-exception v0

    goto :goto_d2

    :catchall_cf
    move-exception v0

    move-object/from16 v4, p1

    .end local p1    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "tmp":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_d2
    :try_start_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d4

    throw v0

    :catchall_d4
    move-exception v0

    goto :goto_d2
.end method

.method public handleRelaunchActivityLocally(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5893
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5894
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const-string v1, "ActivityThread"

    if-nez v0, :cond_12

    .line 5895
    const-string v2, "Activity to relaunch no longer exists"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5896
    return-void

    .line 5899
    :cond_12
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    .line 5901
    .local v2, "prevState":I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_59

    const/4 v3, 0x5

    if-le v2, v3, :cond_1d

    goto :goto_59

    .line 5907
    :cond_1d
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Landroid/app/ActivityClient;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 5909
    new-instance v1, Landroid/util/MergedConfiguration;

    .line 5910
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_2f

    .line 5911
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    goto :goto_35

    :cond_2f
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    invoke-virtual {v3}, Landroid/app/ConfigurationController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    :goto_35
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v3, v4}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 5913
    .local v1, "mergedConfiguration":Landroid/util/MergedConfiguration;
    const/4 v3, 0x0

    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v1, v4}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v3

    .line 5917
    .local v3, "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    nop

    .line 5918
    invoke-static {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v4

    .line 5920
    .local v4, "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    iget-object v5, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    .line 5921
    .local v5, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v5, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 5922
    invoke-virtual {v5, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 5923
    invoke-virtual {p0, v5}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 5924
    return-void

    .line 5902
    .end local v1    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v3    # "activityRelaunchItem":Landroid/app/servertransaction/ActivityRelaunchItem;
    .end local v4    # "lifecycleRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    :cond_59
    :goto_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity state must be in [ON_START..ON_STOP] in order to be relaunched,current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5904
    return-void
.end method

.method public handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .registers 21
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    .line 3994
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_d

    move v0, v5

    goto :goto_e

    :cond_d
    move v0, v4

    :goto_e
    move v3, v0

    .line 3996
    .local v3, "forAutofill":Z
    iget v0, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_16

    move v0, v5

    goto :goto_17

    :cond_16
    move v0, v4

    :goto_17
    move v6, v0

    .line 3999
    .local v6, "requestedOnlyContent":Z
    iget v0, v1, Landroid/app/ActivityThread;->mLastSessionId:I

    iget v7, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    if-eq v0, v7, :cond_46

    .line 4001
    iget v0, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    iput v0, v1, Landroid/app/ActivityThread;->mLastSessionId:I

    .line 4002
    iget-object v0, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .local v0, "i":I
    :goto_29
    if-ltz v0, :cond_46

    .line 4003
    iget-object v7, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/assist/AssistStructure;

    .line 4004
    .local v7, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v7, :cond_3e

    .line 4005
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 4007
    :cond_3e
    iget-object v8, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4002
    .end local v7    # "structure":Landroid/app/assist/AssistStructure;
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 4011
    .end local v0    # "i":I
    :cond_46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    .line 4012
    .local v13, "data":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 4013
    .local v0, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v3, :cond_51

    const/4 v7, 0x0

    goto :goto_56

    :cond_51
    new-instance v7, Landroid/app/assist/AssistContent;

    invoke-direct {v7}, Landroid/app/assist/AssistContent;-><init>()V

    :goto_56
    move-object v14, v7

    .line 4014
    .local v14, "content":Landroid/app/assist/AssistContent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4015
    .local v11, "startTime":J
    iget-object v7, v1, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v8, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4016
    .local v15, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v7, 0x0

    .line 4017
    .local v7, "referrer":Landroid/net/Uri;
    if-eqz v15, :cond_da

    .line 4018
    if-nez v3, :cond_81

    .line 4019
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v13}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 4020
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v13}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 4021
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v7

    .line 4023
    :cond_81
    iget v8, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    if-eq v8, v5, :cond_8c

    if-nez v3, :cond_8c

    if-eqz v6, :cond_8a

    goto :goto_8c

    :cond_8a
    move-object v4, v7

    goto :goto_db

    .line 4025
    :cond_8c
    :goto_8c
    if-nez v6, :cond_98

    .line 4026
    new-instance v8, Landroid/app/assist/AssistStructure;

    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v10, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    invoke-direct {v8, v9, v3, v10}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;ZI)V

    move-object v0, v8

    .line 4028
    :cond_98
    iget-object v8, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 4029
    .local v8, "activityIntent":Landroid/content/Intent;
    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v9, :cond_ae

    iget-object v9, v15, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4030
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-nez v9, :cond_af

    :cond_ae
    move v4, v5

    .line 4032
    .local v4, "notSecure":Z
    :cond_af
    if-eqz v8, :cond_c7

    if-eqz v4, :cond_c7

    .line 4033
    if-nez v3, :cond_d1

    .line 4034
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4035
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, -0x43

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4037
    invoke-virtual {v14, v5}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4038
    .end local v5    # "intent":Landroid/content/Intent;
    goto :goto_d1

    .line 4040
    :cond_c7
    if-nez v3, :cond_d1

    .line 4041
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v14, v5}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 4044
    :cond_d1
    :goto_d1
    if-nez v3, :cond_d8

    .line 4045
    iget-object v5, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v14}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 4050
    .end local v4    # "notSecure":Z
    .end local v8    # "activityIntent":Landroid/content/Intent;
    :cond_d8
    move-object v4, v7

    goto :goto_db

    .line 4017
    :cond_da
    move-object v4, v7

    .line 4050
    .end local v7    # "referrer":Landroid/net/Uri;
    .local v4, "referrer":Landroid/net/Uri;
    :goto_db
    if-nez v6, :cond_fb

    .line 4051
    if-nez v0, :cond_e5

    .line 4052
    new-instance v5, Landroid/app/assist/AssistStructure;

    invoke-direct {v5}, Landroid/app/assist/AssistStructure;-><init>()V

    move-object v0, v5

    .line 4057
    :cond_e5
    invoke-virtual {v0, v11, v12}, Landroid/app/assist/AssistStructure;->setAcquisitionStartTime(J)V

    .line 4058
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/app/assist/AssistStructure;->setAcquisitionEndTime(J)V

    .line 4060
    iget-object v5, v1, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v0

    goto :goto_fc

    .line 4050
    :cond_fb
    move-object v5, v0

    .line 4063
    .end local v0    # "structure":Landroid/app/assist/AssistStructure;
    .local v5, "structure":Landroid/app/assist/AssistStructure;
    :goto_fc
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v16

    .line 4065
    .local v16, "mgr":Landroid/app/IActivityTaskManager;
    :try_start_100
    iget-object v8, v2, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_102} :catch_111

    move-object/from16 v7, v16

    move-object v9, v13

    move-object v10, v5

    move-wide/from16 v17, v11

    .end local v11    # "startTime":J
    .local v17, "startTime":J
    move-object v11, v14

    move-object v12, v4

    :try_start_10a
    invoke-interface/range {v7 .. v12}, Landroid/app/IActivityTaskManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_10d} :catch_10f

    .line 4068
    nop

    .line 4069
    return-void

    .line 4066
    :catch_10f
    move-exception v0

    goto :goto_114

    .end local v17    # "startTime":J
    .restart local v11    # "startTime":J
    :catch_111
    move-exception v0

    move-wide/from16 v17, v11

    .line 4067
    .end local v11    # "startTime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "startTime":J
    :goto_114
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
.end method

.method public handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLjava/lang/String;)V
    .registers 16
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStateRequest"    # Z
    .param p3, "isForward"    # Z
    .param p4, "shouldSendCompatFakeFocus"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5007
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5008
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5012
    invoke-virtual {p0, p1, p2, p5}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 5013
    return-void

    .line 5015
    :cond_d
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivitiesToBeDestroyed:Ljava/util/Map;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5020
    return-void

    .line 5023
    :cond_18
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5030
    .local v1, "a":Landroid/app/Activity;
    const/16 v2, 0x100

    const/4 v3, 0x0

    if-eqz p3, :cond_21

    .line 5031
    move v4, v2

    goto :goto_22

    :cond_21
    move v4, v3

    .line 5036
    .local v4, "forwardBit":I
    :goto_22
    iget-boolean v5, v1, Landroid/app/Activity;->mStartedActivity:Z

    xor-int/2addr v5, v0

    .line 5037
    .local v5, "willBeVisible":Z
    if-nez v5, :cond_33

    .line 5038
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v6

    .line 5039
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    .line 5038
    invoke-virtual {v6, v7}, Landroid/app/ActivityClient;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v5

    .line 5041
    :cond_33
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v6, :cond_85

    iget-boolean v6, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_85

    if-eqz v5, :cond_85

    .line 5042
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    iput-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 5043
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 5044
    .local v6, "decor":Landroid/view/View;
    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 5045
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    .line 5046
    .local v7, "wm":Landroid/view/ViewManager;
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 5047
    .local v8, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v6, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5048
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5049
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v9, v4

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5050
    iget-boolean v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v9, :cond_73

    .line 5051
    iput-boolean v0, v1, Landroid/app/Activity;->mWindowAdded:Z

    .line 5052
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5057
    invoke-virtual {v6}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v9

    .line 5058
    .local v9, "impl":Landroid/view/ViewRootImpl;
    if-eqz v9, :cond_73

    .line 5059
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    .line 5062
    .end local v9    # "impl":Landroid/view/ViewRootImpl;
    :cond_73
    iget-boolean v9, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v9, :cond_8a

    .line 5063
    iget-boolean v9, v1, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v9, :cond_81

    .line 5064
    iput-boolean v0, v1, Landroid/app/Activity;->mWindowAdded:Z

    .line 5065
    invoke-interface {v7, v6, v8}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8a

    .line 5071
    :cond_81
    invoke-virtual {v1, v8}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_8a

    .line 5078
    .end local v6    # "decor":Landroid/view/View;
    .end local v7    # "wm":Landroid/view/ViewManager;
    .end local v8    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_85
    if-nez v5, :cond_8a

    .line 5080
    iput-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto :goto_8b

    .line 5078
    :cond_8a
    :goto_8a
    nop

    .line 5084
    :goto_8b
    invoke-static {p1, v3}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5088
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_f9

    if-eqz v5, :cond_f9

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_f9

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v3, :cond_f9

    .line 5090
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 5091
    .local v3, "impl":Landroid/view/ViewRootImpl;
    if-eqz v3, :cond_af

    .line 5092
    iget-object v6, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    goto :goto_b5

    :cond_af
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 5093
    .local v6, "l":Landroid/view/WindowManager$LayoutParams;
    :goto_b5
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/2addr v2, v7

    if-eq v2, v4, :cond_d4

    .line 5096
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    or-int/2addr v2, v4

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5099
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v2, :cond_d4

    .line 5100
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 5101
    .local v2, "wm":Landroid/view/ViewManager;
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 5102
    .local v7, "decor":Landroid/view/View;
    invoke-interface {v2, v7, v6}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5106
    .end local v2    # "wm":Landroid/view/ViewManager;
    .end local v7    # "decor":Landroid/view/View;
    :cond_d4
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 5107
    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5108
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v0, :cond_e8

    .line 5109
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->makeVisible()V

    .line 5112
    :cond_e8
    if-eqz p4, :cond_f9

    .line 5115
    if-eqz v3, :cond_f0

    .line 5116
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->dispatchCompatFakeFocus()V

    goto :goto_f9

    .line 5118
    :cond_f0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->fakeFocusAfterAttachingToWindow()V

    .line 5123
    .end local v3    # "impl":Landroid/view/ViewRootImpl;
    .end local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_f9
    :goto_f9
    iget-object v0, p0, Landroid/app/ActivityThread;->mNewActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5125
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v2, Landroid/app/ActivityThread$Idler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$Idler-IA;)V

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5126
    return-void
.end method

.method public handleSendResult(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5553
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5554
    .local v0, "resumed":Z
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_19

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v2, :cond_19

    iget-boolean v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v2, :cond_19

    if-eqz v0, :cond_19

    .line 5559
    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5561
    :cond_19
    const/4 v1, 0x0

    if-eqz v0, :cond_96

    .line 5564
    :try_start_1c
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mCalled:Z

    .line 5565
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 5566
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_2e

    .line 5580
    goto :goto_96

    .line 5567
    :cond_2e
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5568
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v0    # "resumed":Z
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local p3    # "reason":Ljava/lang/String;
    throw v2
    :try_end_57
    .catch Landroid/util/SuperNotCalledException; {:try_start_1c .. :try_end_57} :catch_94
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_57} :catch_57

    .line 5573
    .restart local v0    # "resumed":Z
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local p3    # "reason":Ljava/lang/String;
    :catch_57
    move-exception v2

    .line 5574
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_63

    goto :goto_96

    .line 5575
    :cond_63
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to pause activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5577
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5578
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5571
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_94
    move-exception v1

    .line 5572
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 5582
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :cond_96
    :goto_96
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 5583
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 5584
    if-eqz v0, :cond_a3

    .line 5585
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 5587
    :cond_a3
    return-void
.end method

.method public handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions;)V
    .registers 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p3, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 3809
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3810
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_a9

    .line 3813
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_d

    .line 3815
    return-void

    .line 3818
    :cond_d
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3819
    if-eqz p3, :cond_14

    .line 3820
    iput-object p3, v0, Landroid/app/Activity;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 3824
    :cond_14
    const-string v1, "handleStartActivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    .line 3825
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 3827
    if-nez p2, :cond_20

    .line 3829
    return-void

    .line 3833
    :cond_20
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldRestoreInstanceState()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3834
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3835
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v1, :cond_34

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_49

    .line 3836
    :cond_34
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_49

    .line 3839
    :cond_3e
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v1, :cond_49

    .line 3840
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3845
    :cond_49
    :goto_49
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldCallOnPostCreate()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 3846
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    .line 3847
    const-string/jumbo v1, "onPostCreate"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3848
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 3849
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v4, v5}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_71

    .line 3852
    :cond_6a
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v4}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3854
    :goto_71
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3855
    iget-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_79

    goto :goto_a2

    .line 3856
    :cond_79
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3857
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onPostCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3862
    :cond_a2
    :goto_a2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 3863
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3864
    return-void

    .line 3811
    :cond_a9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t start activity that is not stopped."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
    .registers 13
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "configChanges"    # I
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;
    .param p4, "finalStateRequest"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5427
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5429
    new-instance v0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    invoke-direct {v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;-><init>()V

    .line 5430
    .local v0, "stopInfo":Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 5436
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5439
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$misPreHoneycomb(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 5440
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 5443
    :cond_22
    invoke-virtual {v0, p1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5444
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setState(Landroid/os/Bundle;)V

    .line 5445
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setPersistentState(Landroid/os/PersistableBundle;)V

    .line 5446
    invoke-virtual {p3, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V

    .line 5447
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5448
    return-void
.end method

.method public handleSystemApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 4
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 6257
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    const-string v1, "Must only be called in the system process"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 6258
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 6259
    return-void
.end method

.method public handleTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .registers 7
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "onTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5136
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    if-ne v0, p2, :cond_35

    .line 5137
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "Activity top position already set to onTop="

    const-string v2, "ActivityThread"

    if-nez v0, :cond_21

    .line 5138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    return-void

    .line 5142
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5145
    :cond_35
    iput-boolean p2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    .line 5147
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    .line 5148
    const-string/jumbo v0, "topStateChangedWhenResumed"

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5154
    :cond_44
    return-void
.end method

.method public handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 4149
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4150
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    .line 4151
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 4153
    :cond_f
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 7617
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 7618
    :try_start_3
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 7619
    monitor-exit v0

    .line 7620
    return-void

    .line 7619
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method final handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 7623
    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7624
    .local v0, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v0, :cond_60

    .line 7627
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7628
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_51

    .line 7629
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 7630
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_4e

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_4e

    .line 7631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing dead content provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityThread"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7632
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 7628
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 7636
    .end local v1    # "i":I
    :cond_51
    if-eqz p2, :cond_60

    .line 7643
    :try_start_53
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5e} :catch_5f

    .line 7647
    goto :goto_60

    .line 7645
    :catch_5f
    move-exception v1

    .line 7650
    :cond_60
    :goto_60
    return-void
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 2919
    monitor-enter p0

    .line 2920
    :try_start_1
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2921
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2924
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 2925
    monitor-exit p0

    .line 2926
    return-void

    .line 2925
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 7963
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_7

    .line 7964
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 7966
    :cond_7
    return-void
.end method

.method public isHandleSplashScreenExit(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4223
    monitor-enter p0

    .line 4224
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->containsExitListener(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    .line 4225
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isInDensityCompatMode()Z
    .registers 2

    .line 8285
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    return v0
.end method

.method public isProfiling()Z
    .registers 2

    .line 2835
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_10

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 4156
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4157
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    .line 4158
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    .line 4160
    :cond_f
    return-void
.end method

.method onSystemUiContextCleanup(Landroid/app/ContextImpl;)V
    .registers 4
    .param p1, "context"    # Landroid/app/ContextImpl;

    .line 2909
    monitor-enter p0

    .line 2910
    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 2911
    :cond_7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 2912
    .local v0, "index":I
    if-ltz v0, :cond_12

    .line 2913
    iget-object v1, p0, Landroid/app/ActivityThread;->mDisplaySystemUiContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2915
    .end local v0    # "index":I
    :cond_12
    monitor-exit p0

    .line 2916
    return-void

    .line 2915
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeCode"    # Z

    .line 2717
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 2719
    if-eqz p2, :cond_e

    .line 2720
    :try_start_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_16

    .line 2722
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_e
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2724
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_16
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    monitor-exit v0

    return-object v2

    .line 2725
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method

.method performDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V
    .registers 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5592
    const/4 v0, 0x0

    .line 5594
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5595
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p3

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5596
    if-eqz p2, :cond_15

    .line 5597
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Activity;->mFinished:Z

    .line 5600
    :cond_15
    const-string v1, "destroy"

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    .line 5602
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 5603
    const-string v1, "destroy"

    invoke-direct {p0, p1, v2, v1}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    .line 5605
    :cond_24
    if-eqz p4, :cond_6c

    .line 5607
    :try_start_26
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_2f

    .line 5613
    goto :goto_6c

    .line 5608
    :catch_2f
    move-exception v1

    .line 5609
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_6c

    .line 5610
    :cond_3b
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5611
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5616
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6c
    :goto_6c
    :try_start_6c
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v1, Landroid/app/Activity;->mCalled:Z

    .line 5617
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 5618
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_87

    .line 5622
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v1, :cond_86

    .line 5623
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 5632
    :cond_86
    goto :goto_b7

    .line 5619
    :cond_87
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onDestroy()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local p0    # "this":Landroid/app/ActivityThread;
    .end local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local p2    # "finishing":Z
    .end local p3    # "configChanges":I
    .end local p4    # "getNonConfigInstance":Z
    .end local p5    # "reason":Ljava/lang/String;
    throw v1
    :try_end_ac
    .catch Landroid/util/SuperNotCalledException; {:try_start_6c .. :try_end_ac} :catch_10b
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_ac} :catch_ac

    .line 5627
    .restart local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local p0    # "this":Landroid/app/ActivityThread;
    .restart local p1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local p2    # "finishing":Z
    .restart local p3    # "configChanges":I
    .restart local p4    # "getNonConfigInstance":Z
    .restart local p5    # "reason":Ljava/lang/String;
    :catch_ac
    move-exception v1

    .line 5628
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 5633
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b7
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5634
    invoke-virtual {p0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 5635
    monitor-enter p0

    .line 5636
    :try_start_bf
    iget-object v1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    if-eqz v1, :cond_c8

    .line 5637
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->tokenDestroyed(Landroid/os/IBinder;)V

    .line 5639
    :cond_c8
    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_bf .. :try_end_c9} :catchall_db

    .line 5643
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 5644
    :try_start_cc
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5645
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_d8

    .line 5646
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 5647
    return-void

    .line 5645
    :catchall_d8
    move-exception v2

    :try_start_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v2

    .line 5639
    :catchall_db
    move-exception v1

    :try_start_dc
    monitor-exit p0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v1

    .line 5629
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_de
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to destroy activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 5630
    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5625
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_10b
    move-exception v1

    .line 5626
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5198
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5199
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_f

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "start"    # Z

    .line 5463
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_f

    .line 5464
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->performRestart(Z)V

    .line 5465
    if-eqz p2, :cond_f

    .line 5466
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 5469
    :cond_f
    return-void
.end method

.method public performResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)Z
    .registers 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finalStateRequest"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 4936
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4937
    return v1

    .line 4939
    :cond_8
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_29

    .line 4940
    if-nez p2, :cond_28

    .line 4941
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to resume activity which is already resumed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4943
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityThread"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4944
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4951
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_28
    return v1

    .line 4953
    :cond_29
    if-eqz p2, :cond_31

    .line 4954
    iput-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 4955
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4958
    :cond_31
    :try_start_31
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onStateNotSaved()V

    .line 4959
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 4960
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    .line 4961
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 4962
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4963
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 4965
    :cond_4c
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v0, :cond_57

    .line 4966
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, p1, v0, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    .line 4967
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 4969
    :cond_57
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v0, v3, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    .line 4971
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4972
    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 4973
    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    .line 4975
    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isTopResumedActivity:Z

    const-string/jumbo v1, "topWhenResuming"

    invoke-direct {p0, p1, v0, v1}, Landroid/app/ActivityThread;->reportTopResumedActivityChanged(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_6d} :catch_6e

    .line 4981
    goto :goto_79

    .line 4976
    :catch_6e
    move-exception v0

    .line 4977
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 4982
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_79
    const/4 v0, 0x1

    return v0

    .line 4978
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_7b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resume activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 4979
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method final performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5291
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5292
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZLjava/lang/String;)V

    .line 5294
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5192
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPictureInPictureRequested(Landroid/app/Activity;)V

    .line 5193
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 5194
    return-void
.end method

.method public prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "config"    # Landroid/util/MergedConfiguration;
    .param p6, "preserveWindow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z)",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation

    .line 5733
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v0, 0x0

    .line 5734
    .local v0, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    .line 5736
    .local v1, "scheduleRelaunch":Z
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 5737
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    :try_start_6
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3b

    .line 5738
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5740
    .local v4, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_38

    .line 5741
    move-object v0, v4

    .line 5742
    if-eqz p2, :cond_29

    .line 5743
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v5, :cond_27

    .line 5744
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_29

    .line 5746
    :cond_27
    iput-object p2, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5749
    :cond_29
    :goto_29
    if-eqz p3, :cond_3b

    .line 5750
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v5, :cond_35

    .line 5751
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3b

    .line 5753
    :cond_35
    iput-object p3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_3b

    .line 5737
    .end local v4    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 5760
    .end local v3    # "i":I
    :cond_3b
    :goto_3b
    if-nez v0, :cond_51

    .line 5762
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    move-object v0, v3

    .line 5763
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 5764
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5765
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 5766
    iput-boolean p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    .line 5767
    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5768
    const/4 v1, 0x1

    .line 5770
    :cond_51
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5771
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5772
    iget v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v3, p4

    iput v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 5773
    monitor-exit v2

    .line 5775
    if-eqz v1, :cond_67

    move-object v2, v0

    goto :goto_68

    :cond_67
    const/4 v2, 0x0

    :goto_68
    return-object v2

    .line 5773
    :catchall_69
    move-exception v3

    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6 .. :try_end_6b} :catchall_69

    throw v3
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 3479
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3480
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3481
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v1, :cond_18

    .line 3482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3483
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    :cond_18
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3486
    nop

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v0

    .line 3487
    return-void

    .line 3486
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public registerSplashScreenManager(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)V
    .registers 3
    .param p1, "manager"    # Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 4216
    monitor-enter p0

    .line 4217
    :try_start_1
    iput-object p1, p0, Landroid/app/ActivityThread;->mSplashScreenGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 4218
    monitor-exit p0

    .line 4219
    return-void

    .line 4218
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .registers 12
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "stable"    # Z

    .line 7487
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 7488
    return v0

    .line 7491
    :cond_4
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 7492
    .local v1, "jBinder":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 7493
    :try_start_b
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 7494
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v3, :cond_17

    .line 7496
    monitor-exit v2

    return v0

    .line 7499
    :cond_17
    const/4 v4, 0x0

    .line 7500
    .local v4, "lastRef":Z
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p2, :cond_44

    .line 7501
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_22

    .line 7504
    monitor-exit v2

    return v0

    .line 7506
    :cond_22
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 7507
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_6a

    .line 7514
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_a3

    if-nez v7, :cond_31

    move v7, v6

    goto :goto_32

    :cond_31
    move v7, v0

    :goto_32
    move v4, v7

    .line 7520
    :try_start_33
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 7521
    if-eqz v4, :cond_3e

    move v0, v6

    .line 7520
    :cond_3e
    invoke-interface {v7, v8, v5, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_42
    .catchall {:try_start_33 .. :try_end_41} :catchall_a3

    goto :goto_43

    .line 7522
    :catch_42
    move-exception v0

    .line 7524
    :goto_43
    goto :goto_6a

    .line 7527
    :cond_44
    :try_start_44
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_4a

    .line 7530
    monitor-exit v2

    return v0

    .line 7532
    :cond_4a
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 7533
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_6a

    .line 7537
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_a3

    if-nez v7, :cond_59

    move v7, v6

    goto :goto_5a

    :cond_59
    move v7, v0

    :goto_5a
    move v4, v7

    .line 7538
    if-nez v4, :cond_6a

    .line 7544
    :try_start_5d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v7, v8, v0, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_68} :catch_69
    .catchall {:try_start_5d .. :try_end_68} :catchall_a3

    .line 7548
    goto :goto_6a

    .line 7546
    :catch_69
    move-exception v0

    .line 7553
    :cond_6a
    :goto_6a
    if-eqz v4, :cond_a1

    .line 7554
    :try_start_6c
    iget-boolean v0, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v0, :cond_83

    .line 7561
    iput-boolean v6, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 7562
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v5, 0x83

    invoke-virtual {v0, v5, v3}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7563
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v0, v7, v8}, Landroid/app/ActivityThread$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7564
    nop

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_a1

    .line 7565
    :cond_83
    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate remove pending of provider "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v7, v7, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7568
    :cond_a1
    :goto_a1
    monitor-exit v2

    return v6

    .line 7569
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "lastRef":Z
    :catchall_a3
    move-exception v0

    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_6c .. :try_end_a5} :catchall_a3

    throw v0
.end method

.method public reportRefresh(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5473
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->activityRefreshed(Landroid/os/IBinder;)V

    .line 5474
    return-void
.end method

.method public reportRelaunch(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .registers 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5968
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/app/ActivityClient;->activityRelaunched(Landroid/os/IBinder;)V

    .line 5969
    return-void
.end method

.method public reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 5458
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1}, Landroid/app/servertransaction/PendingTransactionActions;->getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 5459
    return-void
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3501
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3502
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3501
    const/16 v1, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3503
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_13

    .line 3505
    const/16 v1, -0x5c

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 3508
    :cond_13
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .line 3662
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 3663
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 3664
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 3665
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 3666
    const/16 v1, 0x77

    invoke-virtual {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 3667
    return-void
.end method

.method scheduleGcIdler()V
    .registers 3

    .line 2930
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_10

    .line 2931
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2932
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2934
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2935
    return-void
.end method

.method schedulePurgeIdler()V
    .registers 3

    .line 2946
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-nez v0, :cond_10

    .line 2947
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 2948
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2950
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2951
    return-void
.end method

.method scheduleRelaunchActivity(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5864
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5865
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_2d

    .line 5866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Schedule relaunch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5867
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->scheduleRelaunchActivityIfPossible(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 5869
    :cond_2d
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .line 3616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3617
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3618
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-static {v1, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v1

    .line 3619
    .local v1, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 3621
    :try_start_1a
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$ApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    .line 3624
    goto :goto_21

    .line 3622
    :catch_20
    move-exception v2

    .line 3625
    :goto_21
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .registers 9
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3633
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3634
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/app/Activity;
    .registers 12
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "state"    # Landroid/os/Bundle;
    .param p7, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p8, "assistToken"    # Landroid/os/IBinder;
    .param p9, "shareableActivityToken"    # Landroid/os/IBinder;

    .line 3516
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 3517
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 3518
    iput-object p8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->assistToken:Landroid/os/IBinder;

    .line 3519
    iput-object p9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->shareableActivityToken:Landroid/os/IBinder;

    .line 3520
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 3521
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 3522
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3523
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 3524
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 3525
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3526
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 3542
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public stopProfiling()V
    .registers 2

    .line 6429
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_7

    .line 6430
    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    .line 6432
    :cond_7
    return-void
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .line 3492
    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3493
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3494
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v1, :cond_10

    .line 3495
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3497
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_10
    monitor-exit v0

    .line 3498
    return-void

    .line 3497
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method unscheduleGcIdler()V
    .registers 3

    .line 2938
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_10

    .line 2939
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2940
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2942
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2943
    return-void
.end method

.method unschedulePurgeIdler()V
    .registers 3

    .line 2954
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    if-eqz v0, :cond_10

    .line 2955
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mPurgeIdlerScheduled:Z

    .line 2956
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPurgeIdler:Landroid/app/ActivityThread$PurgeIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2958
    :cond_10
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2959
    return-void
.end method

.method public updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 6303
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6304
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 6305
    .local v1, "pendingOverrideConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_15

    .line 6306
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 6312
    monitor-exit v0

    return-void

    .line 6314
    :cond_15
    iget-object v2, p0, Landroid/app/ActivityThread;->mPendingOverrideConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6315
    nop

    .end local v1    # "pendingOverrideConfig":Landroid/content/res/Configuration;
    monitor-exit v0

    .line 6316
    return-void

    .line 6315
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 3563
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurationController:Landroid/app/ConfigurationController;

    .line 3564
    invoke-virtual {v0, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 3566
    .local v0, "updatedConfig":Landroid/content/res/Configuration;
    if-eqz v0, :cond_a

    .line 3567
    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3569
    :cond_a
    return-void
.end method

.method public updateProcessState(IZ)V
    .registers 6
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .line 3573
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    monitor-enter v0

    .line 3574
    :try_start_3
    iget v1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    if-ne v1, p1, :cond_9

    .line 3575
    monitor-exit v0

    return-void

    .line 3579
    :cond_9
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v1

    .line 3580
    invoke-static {p1}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v2

    if-eq v1, v2, :cond_16

    .line 3581
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->updateVmProcessState(I)V

    .line 3583
    :cond_16
    iput p1, p0, Landroid/app/ActivityThread;->mLastProcessState:I

    .line 3588
    monitor-exit v0

    .line 3589
    return-void

    .line 3588
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
