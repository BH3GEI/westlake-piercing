.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/IApplicationThread$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final DB_CONNECTION_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %5d %5d %5d  %s"

.field private static final DB_CONNECTION_INFO_HEADER:Ljava/lang/String; = "  %8s %8s %14s %5s %5s %5s  %s"

.field private static final DB_POOL_INFO_FORMAT:Ljava/lang/String; = "  %13d %13d %13d  %s"

.field private static final DB_POOL_INFO_HEADER:Ljava/lang/String; = "  %13s %13s %13s  %s"


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method public static synthetic $r8$lambda$G6hCvS-Qza2XVRHE5EG8OQS6lcg(Landroid/app/ActivityThread;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/app/ActivityThread;->-$$Nest$mhandleTrimMemory(Landroid/app/ActivityThread;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JtANQHbm8_woSrSSrItwPFzx9Rc(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityThread;->-$$Nest$mhandleRequestDirectActions(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vumqJ-Lh07Ah5KHzY1DRdGdc7Do(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityThread;->-$$Nest$mhandlePerformDirectAction(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpDatabaseInfo(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1130
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "isSystem"    # Z

    .line 1997
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 1998
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1999
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2000
    .local v1, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v1, p2, p3}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;Z)V

    .line 2001
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2002
    return-void
.end method

.method private dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .locals 66
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1854
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    const-wide/16 v17, 0x400

    div-long v5, v2, v17

    .line 1855
    .local v5, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    div-long v7, v2, v17

    .line 1856
    .local v7, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    div-long v9, v2, v17

    .line 1858
    .local v9, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    .line 1859
    .local v19, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Runtime;->gc()V

    .line 1860
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    div-long v11, v2, v17

    .line 1861
    .local v11, "dalvikMax":J
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    div-long v15, v2, v17

    .line 1862
    .local v15, "dalvikFree":J
    sub-long v13, v11, v15

    .line 1864
    .local v13, "dalvikAllocated":J
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/app/ContextImpl;

    const/16 v20, 0x0

    aput-object v3, v2, v20

    const-class v3, Landroid/app/Activity;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/WebView;

    const/16 v21, 0x2

    aput-object v3, v2, v21

    const-class v3, Landroid/view/View;

    const/16 v22, 0x3

    aput-object v3, v2, v22

    const-class v3, Landroid/view/ViewRootImpl;

    const/16 v23, 0x4

    aput-object v3, v2, v23

    .line 1871
    .local v2, "classesToCount":[Ljava/lang/Class;
    invoke-static {v2, v4}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v24

    .line 1872
    .local v24, "instanceCounts":[J
    move-object/from16 v25, v2

    .end local v2    # "classesToCount":[Ljava/lang/Class;
    .local v25, "classesToCount":[Ljava/lang/Class;
    aget-wide v2, v24, v20

    .line 1873
    .local v2, "appContextInstanceCount":J
    move-wide/from16 v26, v2

    .end local v2    # "appContextInstanceCount":J
    .local v26, "appContextInstanceCount":J
    aget-wide v2, v24, v4

    .line 1874
    .local v2, "activityInstanceCount":J
    move-wide/from16 v28, v2

    .end local v2    # "activityInstanceCount":J
    .local v28, "activityInstanceCount":J
    aget-wide v2, v24, v21

    .line 1875
    .local v2, "webviewInstanceCount":J
    move-wide/from16 v30, v2

    .end local v2    # "webviewInstanceCount":J
    .local v30, "webviewInstanceCount":J
    aget-wide v2, v24, v22

    .line 1876
    .local v2, "viewInstanceCount":J
    move-wide/from16 v21, v2

    .end local v2    # "viewInstanceCount":J
    .local v21, "viewInstanceCount":J
    aget-wide v2, v24, v23

    .line 1878
    .local v2, "viewRootInstanceCount":J
    move-wide/from16 v32, v2

    .end local v2    # "viewRootInstanceCount":J
    .local v32, "viewRootInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v2

    .line 1879
    .local v2, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v3

    .line 1880
    .local v3, "globalAssetManagerCount":I
    move/from16 v23, v2

    .end local v2    # "globalAssetCount":I
    .local v23, "globalAssetCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v2

    .line 1881
    .local v2, "binderLocalObjectCount":I
    move/from16 v34, v2

    .end local v2    # "binderLocalObjectCount":I
    .local v34, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v2

    .line 1882
    .local v2, "binderProxyObjectCount":I
    move/from16 v35, v2

    .end local v2    # "binderProxyObjectCount":I
    .local v35, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v2

    .line 1883
    .local v2, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v36

    .line 1884
    .local v36, "parcelSize":J
    move/from16 v39, v2

    move/from16 v38, v3

    .end local v2    # "binderDeathObjectCount":I
    .end local v3    # "globalAssetManagerCount":I
    .local v38, "globalAssetManagerCount":I
    .local v39, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v2

    .line 1885
    .local v2, "parcelCount":J
    move-wide/from16 v40, v2

    .end local v2    # "parcelCount":J
    .local v40, "parcelCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v2

    .line 1887
    .local v2, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move-wide/from16 v42, v5

    .end local v5    # "nativeMax":J
    .local v42, "nativeMax":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1888
    .local v4, "mToken":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    move-object/from16 v44, v2

    .end local v2    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v44, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1889
    nop

    .line 1890
    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "unknown"

    .line 1889
    :goto_0
    const-wide v2, 0x10900000002L

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1891
    move-object/from16 v2, p2

    move/from16 v3, p4

    move-wide/from16 v64, v4

    move-wide/from16 v53, v21

    move/from16 v0, v23

    move-wide/from16 v47, v26

    move-wide/from16 v49, v28

    move-wide/from16 v51, v30

    move-wide/from16 v55, v32

    move/from16 v58, v34

    move/from16 v59, v35

    move/from16 v57, v38

    move/from16 v60, v39

    move-wide/from16 v61, v40

    move-wide/from16 v5, v42

    move-object/from16 v63, v44

    const/16 v45, 0x1

    move/from16 v4, p5

    .end local v4    # "mToken":J
    .end local v21    # "viewInstanceCount":J
    .end local v23    # "globalAssetCount":I
    .end local v26    # "appContextInstanceCount":J
    .end local v28    # "activityInstanceCount":J
    .end local v30    # "webviewInstanceCount":J
    .end local v32    # "viewRootInstanceCount":J
    .end local v34    # "binderLocalObjectCount":I
    .end local v35    # "binderProxyObjectCount":I
    .end local v38    # "globalAssetManagerCount":I
    .end local v39    # "binderDeathObjectCount":I
    .end local v40    # "parcelCount":J
    .end local v42    # "nativeMax":J
    .end local v44    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v0, "globalAssetCount":I
    .restart local v5    # "nativeMax":J
    .local v47, "appContextInstanceCount":J
    .local v49, "activityInstanceCount":J
    .local v51, "webviewInstanceCount":J
    .local v53, "viewInstanceCount":J
    .local v55, "viewRootInstanceCount":J
    .local v57, "globalAssetManagerCount":I
    .local v58, "binderLocalObjectCount":I
    .local v59, "binderProxyObjectCount":I
    .local v60, "binderDeathObjectCount":I
    .local v61, "parcelCount":J
    .local v63, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v64, "mToken":J
    invoke-static/range {v1 .. v16}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 1894
    .end local v5    # "nativeMax":J
    .restart local v42    # "nativeMax":J
    move-wide/from16 v2, v64

    .end local v64    # "mToken":J
    .local v2, "mToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1896
    const-wide v4, 0x10b00000002L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1897
    .local v4, "oToken":J
    move-wide/from16 v21, v7

    move-wide/from16 v2, v53

    const-wide v6, 0x10500000001L

    .end local v7    # "nativeAllocated":J
    .end local v53    # "viewInstanceCount":J
    .local v2, "viewInstanceCount":J
    .local v21, "nativeAllocated":J
    .restart local v64    # "mToken":J
    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1899
    const-wide v6, 0x10500000002L

    move-wide/from16 v2, v55

    .end local v55    # "viewRootInstanceCount":J
    .local v2, "viewRootInstanceCount":J
    .restart local v53    # "viewInstanceCount":J
    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1901
    const-wide v6, 0x10500000003L

    move-wide/from16 v32, v2

    move-wide/from16 v2, v47

    .end local v47    # "appContextInstanceCount":J
    .local v2, "appContextInstanceCount":J
    .restart local v32    # "viewRootInstanceCount":J
    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1903
    const-wide v6, 0x10500000004L

    move-wide/from16 v2, v49

    .end local v49    # "activityInstanceCount":J
    .local v2, "activityInstanceCount":J
    .restart local v47    # "appContextInstanceCount":J
    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1905
    const-wide v6, 0x10500000005L

    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1907
    const-wide v6, 0x10500000006L

    move/from16 v8, v57

    .end local v57    # "globalAssetManagerCount":I
    .local v8, "globalAssetManagerCount":I
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1909
    const-wide v6, 0x10500000007L

    move/from16 v0, v58

    .end local v58    # "binderLocalObjectCount":I
    .local v0, "binderLocalObjectCount":I
    .restart local v23    # "globalAssetCount":I
    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1911
    const-wide v6, 0x10500000008L

    move/from16 v0, v59

    .end local v59    # "binderProxyObjectCount":I
    .local v0, "binderProxyObjectCount":I
    .restart local v58    # "binderLocalObjectCount":I
    invoke-virtual {v1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1913
    const-wide v6, 0x10300000009L

    .end local v2    # "activityInstanceCount":J
    .restart local v49    # "activityInstanceCount":J
    div-long v2, v36, v17

    invoke-virtual {v1, v6, v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1915
    const-wide v2, 0x1050000000aL

    move-wide/from16 v6, v61

    .end local v61    # "parcelCount":J
    .local v6, "parcelCount":J
    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1916
    const-wide v2, 0x1050000000bL

    move/from16 v0, v60

    .end local v60    # "binderDeathObjectCount":I
    .local v0, "binderDeathObjectCount":I
    .restart local v59    # "binderProxyObjectCount":I
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1918
    const-wide v2, 0x1050000000dL

    move-wide/from16 v6, v51

    .end local v51    # "webviewInstanceCount":J
    .local v6, "webviewInstanceCount":J
    .restart local v61    # "parcelCount":J
    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1920
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1923
    const-wide v2, 0x10b00000003L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1924
    .local v2, "sToken":J
    move-wide/from16 v17, v4

    move-object/from16 v0, v63

    .end local v4    # "oToken":J
    .end local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v0, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v17, "oToken":J
    .restart local v60    # "binderDeathObjectCount":I
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000001L

    .end local v6    # "webviewInstanceCount":J
    .restart local v51    # "webviewInstanceCount":J
    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1926
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000002L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1928
    iget v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000003L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1930
    iget-object v4, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1931
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 1932
    iget-object v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1934
    .local v6, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    move v7, v4

    move/from16 v44, v5

    .end local v4    # "n":I
    .end local v5    # "i":I
    .local v7, "n":I
    .local v44, "i":I
    const-wide v4, 0x20b00000004L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1935
    .local v4, "dToken":J
    move/from16 v46, v7

    move/from16 v57, v8

    .end local v7    # "n":I
    .end local v8    # "globalAssetManagerCount":I
    .local v46, "n":I
    .restart local v57    # "globalAssetManagerCount":I
    const-wide v7, 0x10900000001L

    move-object/from16 v63, v0

    .end local v0    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    iget-object v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1936
    iget-wide v7, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v55, v9

    const-wide v9, 0x10500000002L

    .end local v9    # "nativeFree":J
    .local v55, "nativeFree":J
    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1937
    iget-wide v7, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1938
    iget v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    const-wide v7, 0x10500000004L

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1940
    iget v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    const-wide v7, 0x10500000006L

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1942
    iget v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    const-wide v7, 0x10500000007L

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1944
    iget v0, v6, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    const-wide v7, 0x10500000008L

    invoke-virtual {v1, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1946
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1931
    .end local v4    # "dToken":J
    .end local v6    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v5, v44, 0x1

    move/from16 v4, v46

    move-wide/from16 v9, v55

    move/from16 v8, v57

    move-object/from16 v0, v63

    .end local v44    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .end local v46    # "n":I
    .end local v55    # "nativeFree":J
    .end local v57    # "globalAssetManagerCount":I
    .end local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v0    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v4, "n":I
    .restart local v8    # "globalAssetManagerCount":I
    .restart local v9    # "nativeFree":J
    :cond_1
    move-object/from16 v63, v0

    move/from16 v46, v4

    move/from16 v44, v5

    move/from16 v57, v8

    move-wide/from16 v55, v9

    .line 1948
    .end local v0    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v8    # "globalAssetManagerCount":I
    .end local v9    # "nativeFree":J
    .restart local v46    # "n":I
    .restart local v55    # "nativeFree":J
    .restart local v57    # "globalAssetManagerCount":I
    .restart local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1951
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v0

    .line 1952
    .local v0, "assetAlloc":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1953
    const-wide v4, 0x10900000004L

    invoke-virtual {v1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1957
    :cond_2
    if-eqz p6, :cond_6

    .line 1958
    move-object/from16 v4, p0

    iget-object v5, v4, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-nez v5, :cond_3

    move/from16 v5, v20

    goto :goto_2

    :cond_3
    iget-object v5, v4, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1959
    .local v5, "flags":I
    :goto_2
    and-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_4

    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_5

    :cond_4
    move/from16 v20, v45

    :cond_5
    move/from16 v6, v20

    .line 1961
    .local v6, "showContents":Z
    nop

    .line 1962
    const/16 v7, 0x64

    invoke-static {v7, v6}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v7

    .line 1961
    const-wide v8, 0x10900000005L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_3

    .line 1957
    .end local v5    # "flags":I
    .end local v6    # "showContents":Z
    :cond_6
    move-object/from16 v4, p0

    .line 1964
    :goto_3
    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZZ)V
    .locals 59
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "dumpAllocatorStats"    # Z
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1675
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v21, 0x400

    div-long v9, v1, v21

    .line 1676
    .local v9, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v11, v1, v21

    .line 1677
    .local v11, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v13, v1, v21

    .line 1679
    .local v13, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    .line 1680
    .local v23, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->gc()V

    .line 1681
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v15, v1, v21

    .line 1682
    .local v15, "dalvikMax":J
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v19, v1, v21

    .line 1683
    .local v19, "dalvikFree":J
    sub-long v17, v15, v19

    .line 1685
    .local v17, "dalvikAllocated":J
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v24, 0x0

    aput-object v2, v1, v24

    const-class v2, Landroid/app/Activity;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Landroid/webkit/WebView;

    const/16 v25, 0x2

    aput-object v2, v1, v25

    const-class v2, Landroid/view/View;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-class v2, Landroid/view/ViewRootImpl;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 1692
    .local v1, "classesToCount":[Ljava/lang/Class;
    invoke-static {v1, v3}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v26

    .line 1693
    .local v26, "instanceCounts":[J
    aget-wide v6, v26, v24

    .line 1694
    .local v6, "appContextInstanceCount":J
    move-object v8, v1

    .end local v1    # "classesToCount":[Ljava/lang/Class;
    .local v8, "classesToCount":[Ljava/lang/Class;
    aget-wide v1, v26, v3

    .line 1695
    .local v1, "activityInstanceCount":J
    aget-wide v27, v26, v25

    .line 1696
    .local v27, "webviewInstanceCount":J
    move-wide/from16 v29, v1

    .end local v1    # "activityInstanceCount":J
    .local v29, "activityInstanceCount":J
    aget-wide v1, v26, v4

    .line 1697
    .local v1, "viewInstanceCount":J
    aget-wide v4, v26, v5

    .line 1699
    .local v4, "viewRootInstanceCount":J
    move-wide/from16 v31, v1

    .end local v1    # "viewInstanceCount":J
    .local v31, "viewInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v1

    .line 1700
    .local v1, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v2

    .line 1701
    .local v2, "globalAssetManagerCount":I
    move/from16 v33, v1

    .end local v1    # "globalAssetCount":I
    .local v33, "globalAssetCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v1

    .line 1702
    .local v1, "binderLocalObjectCount":I
    move/from16 v34, v1

    .end local v1    # "binderLocalObjectCount":I
    .local v34, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v1

    .line 1703
    .local v1, "binderProxyObjectCount":I
    move/from16 v35, v1

    .end local v1    # "binderProxyObjectCount":I
    .local v35, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v1

    .line 1704
    .local v1, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v36

    .line 1705
    .local v36, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v38

    .line 1706
    .local v38, "parcelCount":J
    move/from16 v40, v1

    .end local v1    # "binderDeathObjectCount":I
    .local v40, "binderDeathObjectCount":I
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v1

    .line 1708
    .local v1, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    nop

    .line 1709
    move-wide/from16 v41, v6

    .end local v6    # "appContextInstanceCount":J
    .local v41, "appContextInstanceCount":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 1710
    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "unknown"

    .line 1708
    :goto_0
    move-object/from16 v55, v1

    move/from16 v51, v2

    move-wide/from16 v49, v4

    move-wide/from16 v45, v29

    move-wide/from16 v47, v31

    move/from16 v0, v33

    move/from16 v52, v34

    move/from16 v53, v35

    move/from16 v54, v40

    move-wide/from16 v43, v41

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v30, v3

    move-object/from16 v29, v8

    move/from16 v3, p3

    move-object v8, v6

    move/from16 v6, p6

    .end local v1    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v2    # "globalAssetManagerCount":I
    .end local v4    # "viewRootInstanceCount":J
    .end local v8    # "classesToCount":[Ljava/lang/Class;
    .end local v31    # "viewInstanceCount":J
    .end local v33    # "globalAssetCount":I
    .end local v34    # "binderLocalObjectCount":I
    .end local v35    # "binderProxyObjectCount":I
    .end local v40    # "binderDeathObjectCount":I
    .end local v41    # "appContextInstanceCount":J
    .local v0, "globalAssetCount":I
    .local v29, "classesToCount":[Ljava/lang/Class;
    .local v43, "appContextInstanceCount":J
    .local v45, "activityInstanceCount":J
    .local v47, "viewInstanceCount":J
    .local v49, "viewRootInstanceCount":J
    .local v51, "globalAssetManagerCount":I
    .local v52, "binderLocalObjectCount":I
    .local v53, "binderProxyObjectCount":I
    .local v54, "binderDeathObjectCount":I
    .local v55, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static/range {v1 .. v20}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    .line 1714
    if-eqz p3, :cond_2

    .line 1719
    move-wide/from16 v2, v47

    .end local v47    # "viewInstanceCount":J
    .local v2, "viewInstanceCount":J
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1720
    move-wide/from16 v5, v49

    .end local v49    # "viewRootInstanceCount":J
    .local v5, "viewRootInstanceCount":J
    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1721
    move-wide/from16 v7, v43

    .end local v43    # "appContextInstanceCount":J
    .local v7, "appContextInstanceCount":J
    invoke-virtual {v1, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1722
    move-wide/from16 v31, v2

    move-wide/from16 v2, v45

    .end local v45    # "activityInstanceCount":J
    .local v2, "activityInstanceCount":J
    .restart local v31    # "viewInstanceCount":J
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1724
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1725
    move/from16 v33, v0

    move/from16 v0, v51

    .end local v51    # "globalAssetManagerCount":I
    .local v0, "globalAssetManagerCount":I
    .restart local v33    # "globalAssetCount":I
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1726
    move/from16 v0, v52

    .end local v52    # "binderLocalObjectCount":I
    .local v0, "binderLocalObjectCount":I
    .restart local v51    # "globalAssetManagerCount":I
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1727
    move/from16 v34, v0

    move/from16 v0, v53

    .end local v53    # "binderProxyObjectCount":I
    .local v0, "binderProxyObjectCount":I
    .restart local v34    # "binderLocalObjectCount":I
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1729
    move/from16 v35, v0

    move/from16 v0, v54

    .end local v54    # "binderDeathObjectCount":I
    .local v0, "binderDeathObjectCount":I
    .restart local v35    # "binderProxyObjectCount":I
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1732
    move/from16 v40, v0

    move-object/from16 v4, v55

    .end local v0    # "binderDeathObjectCount":I
    .end local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v4, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v40    # "binderDeathObjectCount":I
    iget v0, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1733
    iget v0, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1734
    iget v0, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1735
    iget v0, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1736
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move-wide/from16 v45, v2

    .end local v2    # "activityInstanceCount":J
    .restart local v45    # "activityInstanceCount":J
    iget-object v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1737
    iget-object v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1738
    .local v2, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1739
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v55, v4

    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    iget-wide v3, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1740
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v3, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1741
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1742
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1743
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1744
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v2, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1736
    .end local v2    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v45

    move-object/from16 v4, v55

    goto :goto_1

    .line 1746
    .end local v0    # "i":I
    .end local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1748
    return-void

    .line 1751
    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v5    # "viewRootInstanceCount":J
    .end local v7    # "appContextInstanceCount":J
    .end local v31    # "viewInstanceCount":J
    .end local v33    # "globalAssetCount":I
    .end local v34    # "binderLocalObjectCount":I
    .end local v35    # "binderProxyObjectCount":I
    .end local v40    # "binderDeathObjectCount":I
    .local v0, "globalAssetCount":I
    .restart local v43    # "appContextInstanceCount":J
    .restart local v47    # "viewInstanceCount":J
    .restart local v49    # "viewRootInstanceCount":J
    .restart local v52    # "binderLocalObjectCount":I
    .restart local v53    # "binderProxyObjectCount":I
    .restart local v54    # "binderDeathObjectCount":I
    .restart local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    :cond_2
    move/from16 v33, v0

    move-wide/from16 v7, v43

    move-wide/from16 v31, v47

    move-wide/from16 v5, v49

    move/from16 v34, v52

    move/from16 v35, v53

    move/from16 v40, v54

    .end local v0    # "globalAssetCount":I
    .end local v43    # "appContextInstanceCount":J
    .end local v47    # "viewInstanceCount":J
    .end local v49    # "viewRootInstanceCount":J
    .end local v52    # "binderLocalObjectCount":I
    .end local v53    # "binderProxyObjectCount":I
    .end local v54    # "binderDeathObjectCount":I
    .restart local v5    # "viewRootInstanceCount":J
    .restart local v7    # "appContextInstanceCount":J
    .restart local v31    # "viewInstanceCount":J
    .restart local v33    # "globalAssetCount":I
    .restart local v34    # "binderLocalObjectCount":I
    .restart local v35    # "binderProxyObjectCount":I
    .restart local v40    # "binderDeathObjectCount":I
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1752
    const-string v2, " Objects"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1754
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Views:"

    .end local v5    # "viewRootInstanceCount":J
    .restart local v49    # "viewRootInstanceCount":J
    const-string v5, "ViewRootImpl:"

    filled-new-array {v4, v2, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 1753
    const-string v3, "%21s %8d %21s %8d"

    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1756
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1757
    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "AppContexts:"

    const-string v6, "Activities:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1756
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1759
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1760
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Assets:"

    const-string v6, "AssetManagers:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1759
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1762
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1763
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Local Binders:"

    const-string v6, "Proxy Binders:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1762
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1764
    div-long v4, v36, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1765
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Parcel memory:"

    const-string v6, "Parcel count:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1764
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1767
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Death Recipients:"

    const-string v6, "WebViews:"

    filled-new-array {v5, v2, v6, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 1766
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    invoke-static {}, Lcom/android/libcore/readonly/Flags;->nativeMetrics()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1770
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfoNativeAllocations(Ljava/io/PrintWriter;)V

    .line 1774
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    const-string v2, " SQL"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    move-object/from16 v4, v55

    .end local v55    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "MEMORY_USED:"

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%21s %8d"

    invoke-static {v1, v5, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1777
    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v2, v2, 0x400

    .line 1778
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v5, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v5, v5, 0x400

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PAGECACHE_OVERFLOW:"

    move-wide/from16 v41, v7

    .end local v7    # "appContextInstanceCount":J
    .restart local v41    # "appContextInstanceCount":J
    const-string v7, "MALLOC_SIZE:"

    filled-new-array {v6, v2, v7, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 1777
    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    iget-object v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1781
    .local v2, "N":I
    if-lez v2, :cond_b

    .line 1782
    const-string v3, " DATABASES"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    const-string v57, "cache size"

    const-string v58, "Dbname"

    const-string/jumbo v52, "pgsz"

    const-string v53, "dbsz"

    const-string v54, "Lookaside(b)"

    const-string v55, "cache hits"

    const-string v56, "cache misses"

    filled-new-array/range {v52 .. v58}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "  %8s %8s %14s %5s %5s %5s  %s"

    invoke-static {v1, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1785
    const-string v3, "PER CONNECTION STATS"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_8

    .line 1787
    iget-object v5, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1788
    .local v5, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    iget-boolean v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    if-eqz v6, :cond_4

    .line 1790
    goto :goto_6

    .line 1792
    :cond_4
    nop

    .line 1793
    iget-wide v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v21, 0x0

    cmp-long v6, v6, v21

    if-lez v6, :cond_5

    iget-wide v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v52, v6

    goto :goto_3

    :cond_5
    move-object/from16 v52, v0

    .line 1794
    :goto_3
    iget-wide v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    cmp-long v6, v6, v21

    if-lez v6, :cond_6

    iget-wide v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v53, v6

    goto :goto_4

    :cond_6
    move-object/from16 v53, v0

    .line 1795
    :goto_4
    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v6, :cond_7

    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v54, v6

    goto :goto_5

    :cond_7
    move-object/from16 v54, v0

    :goto_5
    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    .line 1796
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    iget-object v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v58, v6

    filled-new-array/range {v52 .. v58}, [Ljava/lang/Object;

    move-result-object v6

    .line 1792
    const-string v7, "  %8s %8s %14s %5d %5d %5d  %s"

    invoke-static {v1, v7, v6}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1786
    .end local v5    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1801
    .end local v3    # "i":I
    :cond_8
    const-string v3, "POOL STATS"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    const-string v3, "cache size"

    const-string v5, "Dbname"

    const-string v6, "cache hits"

    const-string v7, "cache misses"

    filled-new-array {v6, v7, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "  %13s %13s %13s  %s"

    invoke-static {v1, v5, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1804
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7
    if-ge v3, v2, :cond_a

    .line 1805
    iget-object v5, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1806
    .restart local v5    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    iget-boolean v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    if-nez v6, :cond_9

    .line 1807
    move/from16 v21, v2

    goto :goto_8

    .line 1809
    :cond_9
    iget v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    .line 1810
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v21, v2

    .end local v2    # "N":I
    .local v21, "N":I
    iget-object v2, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    filled-new-array {v6, v7, v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1809
    const-string v6, "  %13d %13d %13d  %s"

    invoke-static {v1, v6, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1804
    .end local v5    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v21

    goto :goto_7

    .end local v21    # "N":I
    .restart local v2    # "N":I
    :cond_a
    move/from16 v21, v2

    .end local v2    # "N":I
    .restart local v21    # "N":I
    goto :goto_9

    .line 1781
    .end local v3    # "i":I
    .end local v21    # "N":I
    .restart local v2    # "N":I
    :cond_b
    move/from16 v21, v2

    .line 1815
    .end local v2    # "N":I
    .restart local v21    # "N":I
    :goto_9
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v2

    .line 1816
    .local v2, "assetAlloc":Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 1817
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1818
    const-string v3, " Asset Allocations"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1819
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1823
    :cond_c
    if-eqz p7, :cond_10

    .line 1824
    move-object/from16 v3, p0

    iget-object v5, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_d

    iget-object v5, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_e

    :cond_d
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_f

    :cond_e
    move/from16 v24, v30

    :cond_f
    move/from16 v5, v24

    .line 1827
    .local v5, "showContents":Z
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    const-string v0, " Unreachable memory"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1829
    const/16 v0, 0x64

    invoke-static {v0, v5}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .line 1823
    .end local v5    # "showContents":Z
    :cond_10
    move-object/from16 v3, p0

    .line 1831
    :goto_a
    if-eqz p8, :cond_11

    .line 1832
    invoke-static {}, Landroid/os/Debug;->logAllocatorStats()Z

    .line 1834
    :cond_11
    return-void
.end method

.method private dumpMemInfoNativeAllocations(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1647
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    const-string v0, " Native Allocations"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1649
    const-string v0, "Count"

    const-string v1, "Total(kB)"

    const-string v2, ""

    filled-new-array {v2, v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%21s %8s %21s %8s"

    invoke-static {p1, v1, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1650
    const-string v0, "------"

    filled-new-array {v2, v0, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1652
    invoke-static {}, Llibcore/util/NativeAllocationRegistry;->getMetrics()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/NativeAllocationRegistry$Metrics;

    .line 1654
    .local v1, "m":Llibcore/util/NativeAllocationRegistry$Metrics;
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "android.hardware.HardwareBuffer"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_1
    const-string v4, "android.graphics.Bitmap"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 1657
    const-string v3, "Other"

    goto :goto_3

    .line 1656
    :pswitch_0
    const-string v3, "HardwareBuffer"

    goto :goto_3

    .line 1655
    :pswitch_1
    const-string v3, "Bitmap"

    .line 1657
    :goto_3
    nop

    .line 1660
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x400

    const-string v5, "%21s %8d %21s %8d"

    if-nez v4, :cond_1

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedBytes()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-eqz v4, :cond_2

    .line 1661
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " (malloced):"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1662
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedCount()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedBytes()J

    move-result-wide v11

    div-long/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v4, v10, v2, v11}, [Ljava/lang/Object;

    move-result-object v4

    .line 1661
    invoke-static {p1, v5, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1664
    :cond_2
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedCount()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-nez v4, :cond_3

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedBytes()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-eqz v4, :cond_4

    .line 1665
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (nonmalloced):"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1666
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedBytes()J

    move-result-wide v10

    div-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v4, v6, v2, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 1665
    invoke-static {p1, v5, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1668
    .end local v1    # "m":Llibcore/util/NativeAllocationRegistry$Metrics;
    .end local v3    # "className":Ljava/lang/String;
    :cond_4
    goto/16 :goto_0

    .line 1669
    :cond_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xb9ab36d -> :sswitch_1
        0x48440eaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDatabasesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1993
    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private updateCompatOverrideDisplayRotation(Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 1400
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isOverrideDisplayRotationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationDisplayRotation:I

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->setOverrideDisplayRotation(I)V

    goto :goto_0

    .line 1403
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/CompatibilityInfo;->setOverrideDisplayRotation(I)V

    .line 1406
    :goto_0
    return-void
.end method

.method private updateCompatOverrideScale(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 1390
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->hasOverrideScaling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    invoke-static {v0, v1}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF)V

    goto :goto_0

    .line 1394
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF)V

    .line 1397
    :goto_0
    return-void
.end method


# virtual methods
.method public attachAgent(Ljava/lang/String;)V
    .locals 2
    .param p1, "agent"    # Ljava/lang/String;

    .line 1553
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1554
    return-void
.end method

.method public attachStartupAgents(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataDir"    # Ljava/lang/String;

    .line 1557
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1558
    return-void
.end method

.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V
    .locals 16
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "sdkSandboxClientAppVolumeUuid"    # Ljava/lang/String;
    .param p4, "sdkSandboxClientAppPackage"    # Ljava/lang/String;
    .param p5, "isSdkInSandbox"    # Z
    .param p6, "providerList"    # Landroid/content/pm/ProviderInfoList;
    .param p7, "instrumentationName"    # Landroid/content/ComponentName;
    .param p8, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p9, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p10, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p11, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p12, "debugMode"    # I
    .param p13, "enableBinderTracking"    # Z
    .param p14, "trackAllocation"    # Z
    .param p15, "isRestrictedBackupMode"    # Z
    .param p16, "persistent"    # Z
    .param p17, "config"    # Landroid/content/res/Configuration;
    .param p18, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p19, "services"    # Ljava/util/Map;
    .param p20, "coreSettings"    # Landroid/os/Bundle;
    .param p21, "buildSerial"    # Ljava/lang/String;
    .param p22, "autofillOptions"    # Landroid/content/AutofillOptions;
    .param p23, "contentCaptureOptions"    # Landroid/content/ContentCaptureOptions;
    .param p24, "disabledCompatChanges"    # [J
    .param p25, "loggableCompatChanges"    # [J
    .param p26, "serializedSystemFontMap"    # Landroid/os/SharedMemory;
    .param p27, "applicationSharedMemoryFd"    # Ljava/io/FileDescriptor;
    .param p28, "startRequestedElapsedTime"    # J
    .param p30, "startRequestedUptime"    # J

    .line 1314
    move-object/from16 v0, p0

    move-object/from16 v1, p18

    if-eqz p19, :cond_0

    .line 1337
    invoke-static/range {p19 .. p19}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 1342
    :cond_0
    invoke-static {}, Lcom/android/internal/os/Flags;->applicationSharedMemoryEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1343
    nop

    .line 1344
    const/4 v2, 0x0

    move-object/from16 v3, p27

    invoke-static {v3, v2}, Lcom/android/internal/os/ApplicationSharedMemory;->fromFileDescriptor(Ljava/io/FileDescriptor;Z)Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v2

    .line 1346
    .local v2, "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->cacheSdkSystemFeatures()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1347
    new-instance v4, Landroid/content/pm/SystemFeaturesCache;

    .line 1348
    invoke-virtual {v2}, Lcom/android/internal/os/ApplicationSharedMemory;->readSystemFeaturesCache()[I

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/SystemFeaturesCache;-><init>([I)V

    .line 1347
    invoke-static {v4}, Landroid/content/pm/SystemFeaturesCache;->setInstance(Landroid/content/pm/SystemFeaturesCache;)V

    .line 1350
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/os/ApplicationSharedMemory;->closeFileDescriptor()V

    .line 1351
    invoke-static {v2}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    goto :goto_0

    .line 1342
    .end local v2    # "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    :cond_2
    move-object/from16 v3, p27

    .line 1354
    :goto_0
    move-object/from16 v2, p20

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 1356
    new-instance v4, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v4}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 1357
    .local v4, "data":Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v5, p1

    iput-object v5, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1358
    move-object/from16 v6, p2

    iput-object v6, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1359
    move-object/from16 v7, p3

    iput-object v7, v4, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 1360
    move-object/from16 v8, p4

    iput-object v8, v4, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 1361
    move/from16 v9, p5

    iput-boolean v9, v4, Landroid/app/ActivityThread$AppBindData;->isSdkInSandbox:Z

    .line 1362
    invoke-virtual/range {p6 .. p6}, Landroid/content/pm/ProviderInfoList;->getList()Ljava/util/List;

    move-result-object v10

    iput-object v10, v4, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 1363
    move-object/from16 v10, p7

    iput-object v10, v4, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 1364
    move-object/from16 v11, p9

    iput-object v11, v4, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 1365
    move-object/from16 v12, p10

    iput-object v12, v4, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1366
    move-object/from16 v13, p11

    iput-object v13, v4, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1367
    move/from16 v14, p12

    iput v14, v4, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 1368
    move/from16 v15, p13

    iput-boolean v15, v4, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    .line 1369
    move/from16 v2, p14

    iput-boolean v2, v4, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    .line 1370
    move/from16 v2, p15

    iput-boolean v2, v4, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 1371
    move/from16 v2, p16

    iput-boolean v2, v4, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 1372
    move-object/from16 v2, p17

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 1373
    iput-object v1, v4, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1374
    move-object/from16 v2, p8

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1375
    move-object/from16 v2, p21

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    .line 1376
    move-object/from16 v2, p22

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    .line 1377
    move-object/from16 v2, p23

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 1378
    move-object/from16 v2, p24

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    .line 1379
    move-object/from16 v2, p25

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->mLoggableCompatChanges:[J

    .line 1380
    move-object/from16 v2, p26

    iput-object v2, v4, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    .line 1381
    move-wide/from16 v2, p28

    iput-wide v2, v4, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    .line 1382
    move-wide/from16 v2, p30

    iput-wide v2, v4, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    .line 1383
    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideScale(Landroid/content/res/CompatibilityInfo;)V

    .line 1384
    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideDisplayRotation(Landroid/content/res/CompatibilityInfo;)V

    .line 1385
    invoke-static/range {p17 .. p17}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 1386
    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0, v4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1387
    return-void
.end method

.method public clearDnsCache()V
    .locals 1

    .line 1445
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 1448
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->dispatchNetworkConfigurationChange()V

    .line 1449
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1573
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1574
    return-void
.end method

.method public dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1600
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    move-object v3, v0

    .line 1602
    .local v3, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1603
    iput-object p2, v3, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1604
    iput-object p3, v3, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 1605
    iput-object p4, v3, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1606
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0x88

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1607
    :catch_0
    move-exception v0

    .line 1608
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ActivityThread"

    const-string v2, "dumpActivity failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1610
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1611
    nop

    .line 1612
    return-void

    .line 1610
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1611
    throw v0
.end method

.method public dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1984
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1985
    invoke-static {p1}, Landroid/app/BroadcastStickyCache;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1988
    nop

    .line 1989
    return-void

    .line 1987
    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1988
    throw v0
.end method

.method public dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 2006
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_0

    .line 2012
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2017
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2018
    nop

    .line 2020
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2030
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 2017
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2013
    :catch_0
    move-exception v0

    .line 2014
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dup FD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2017
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2015
    return-void

    .line 2017
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2018
    throw v0

    .line 2031
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    .line 2032
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2034
    :goto_1
    return-void
.end method

.method public dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1968
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    move-object v3, v0

    .line 1970
    .local v3, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1971
    const/4 v0, 0x0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1972
    iput-object p2, v3, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1973
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0xa5

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1974
    :catch_0
    move-exception v0

    .line 1975
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ActivityThread"

    const-string v2, "dumpGfxInfo failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1977
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1978
    nop

    .line 1979
    return-void

    .line 1977
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1978
    throw v0
.end method

.method public dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 7
    .param p1, "managed"    # Z
    .param p2, "mallocInfo"    # Z
    .param p3, "runGc"    # Z
    .param p4, "dumpBitmaps"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p7, "finishCallback"    # Landroid/os/RemoteCallback;

    .line 1532
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    move-object v3, v0

    .line 1533
    .local v3, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-boolean p1, v3, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    .line 1534
    iput-boolean p2, v3, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    .line 1535
    iput-object p4, v3, Landroid/app/ActivityThread$DumpHeapData;->dumpBitmaps:Ljava/lang/String;

    .line 1536
    iput-boolean p3, v3, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    .line 1537
    iput-object p5, v3, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 1541
    :try_start_0
    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    invoke-static {p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1547
    nop

    .line 1548
    iput-object p7, v3, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1549
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0x87

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 1550
    return-void

    .line 1546
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1542
    :catch_0
    move-exception v0

    .line 1543
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ActivityThread"

    const-string v2, "Failed to duplicate heap dump file descriptor"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    invoke-static {p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1544
    return-void

    .line 1546
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1547
    throw v0
.end method

.method public dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V
    .locals 11
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "dumpAllocatorStats"    # Z
    .param p9, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1634
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 1635
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 1637
    .local v3, "pw":Ljava/io/PrintWriter;
    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    :try_start_0
    invoke-direct/range {v2 .. v10}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1641
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1642
    nop

    .line 1643
    return-void

    .line 1640
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1641
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1642
    throw v0
.end method

.method public dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .locals 9
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .param p7, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1841
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 1843
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    :try_start_0
    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1846
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1847
    nop

    .line 1848
    return-void

    .line 1845
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1846
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1847
    throw v0
.end method

.method public dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1616
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    move-object v3, v0

    .line 1618
    .local v3, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1619
    iput-object p2, v3, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1620
    iput-object p3, v3, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1621
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0x8d

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1622
    :catch_0
    move-exception v0

    .line 1623
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ActivityThread"

    const-string v2, "dumpProvider failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1625
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1626
    nop

    .line 1627
    return-void

    .line 1625
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1626
    throw v0
.end method

.method public dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .locals 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 1586
    new-instance v0, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpResourcesData;-><init>()V

    move-object v3, v0

    .line 1588
    .local v3, "data":Landroid/app/ActivityThread$DumpResourcesData;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1589
    iput-object p2, v3, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1590
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0xa6

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1594
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1591
    :catch_0
    move-exception v0

    .line 1592
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ActivityThread"

    const-string v2, "dumpResources failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1594
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1595
    nop

    .line 1596
    return-void

    .line 1594
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1595
    throw v0
.end method

.method public dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1472
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    move-object v3, v0

    .line 1474
    .local v3, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v3, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1475
    iput-object p2, v3, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1476
    iput-object p3, v3, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1477
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v2, 0x7b

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1478
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "ActivityThread"

    const-string v2, "dumpService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1481
    nop

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1482
    nop

    .line 1483
    return-void

    .line 1481
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1482
    throw v0
.end method

.method public getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    .locals 5
    .param p1, "methodDescriptor"    # Landroid/os/instrumentation/MethodDescriptor;
    .param p2, "resultCallback"    # Landroid/os/instrumentation/IOffsetCallback;

    .line 2257
    nop

    .line 2258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2257
    invoke-static {v0, p1}, Landroid/os/instrumentation/MethodDescriptorParser;->parseMethodDescriptor(Ljava/lang/ClassLoader;Landroid/os/instrumentation/MethodDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2259
    .local v0, "method":Ljava/lang/reflect/Method;
    nop

    .line 2260
    invoke-static {v0}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsets(Ljava/lang/reflect/Method;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object v1

    .line 2262
    .local v1, "location":Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;
    if-nez v1, :cond_0

    .line 2263
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v2}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V

    .line 2264
    return-void

    .line 2266
    :cond_0
    new-instance v2, Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    invoke-direct {v2}, Landroid/os/instrumentation/ExecutableMethodFileOffsets;-><init>()V

    .line 2267
    .local v2, "ret":Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    invoke-virtual {v1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerPath:Ljava/lang/String;

    .line 2268
    invoke-virtual {v1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerOffset()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerOffset:J

    .line 2269
    invoke-virtual {v1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getMethodOffset()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->methodOffset:J

    .line 2270
    invoke-interface {p2, v2}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2273
    .end local v2    # "ret":Landroid/os/instrumentation/ExecutableMethodFileOffsets;
    nop

    .line 2274
    return-void

    .line 2271
    :catch_0
    move-exception v2

    .line 2272
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public handleTrustStorageUpdate()V
    .locals 1

    .line 2162
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->handleTrustStorageUpdate()V

    .line 2163
    return-void
.end method

.method public instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .param p1, "instrumentationName"    # Landroid/content/ComponentName;
    .param p2, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p3, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p4, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p5, "targetInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2230
    new-instance v0, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v0}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 2231
    .local v0, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 2232
    iput-object p2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 2233
    iput-object p3, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 2234
    iput-object p4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 2235
    iput-object p5, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 2236
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2237
    return-void
.end method

.method public notifyCleartextNetwork([B)V
    .locals 1
    .param p1, "firstPacket"    # [B

    .line 2131
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    .line 2134
    :cond_0
    return-void
.end method

.method public notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "holder"    # Landroid/app/ContentProviderHolder;
    .param p2, "authorities"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "published"    # Z

    .line 2216
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2217
    .local v0, "auths":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2218
    .local v3, "auth":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v3, p3}, Landroid/app/ActivityThread;->-$$Nest$mgetGetProviderKey(Landroid/app/ActivityThread;Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v4

    .line 2219
    .local v4, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v5, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2220
    :try_start_0
    iput-object p1, v4, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 2221
    iget-object v6, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 2222
    monitor-exit v5

    .line 2217
    .end local v3    # "auth":Ljava/lang/String;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2222
    .restart local v3    # "auth":Ljava/lang/String;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2224
    .end local v3    # "auth":Ljava/lang/String;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :cond_0
    return-void
.end method

.method public performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 2199
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    move-object v6, v0

    .line 2200
    .local v6, "cancellationSignal":Landroid/os/CancellationSignal;
    if-eqz p4, :cond_0

    .line 2201
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v0

    .line 2203
    .local v0, "transport":Landroid/os/ICancellationSignal;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2204
    .local v1, "cancellationResult":Landroid/os/Bundle;
    nop

    .line 2205
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2204
    const-string/jumbo v3, "key_cancellation_signal"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2206
    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2208
    .end local v0    # "transport":Landroid/os/ICancellationSignal;
    .end local v1    # "cancellationResult":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "actionId":Ljava/lang/String;
    .end local p3    # "arguments":Landroid/os/Bundle;
    .end local p5    # "resultCallback":Landroid/os/RemoteCallback;
    .local v3, "activityToken":Landroid/os/IBinder;
    .local v4, "actionId":Ljava/lang/String;
    .local v5, "arguments":Landroid/os/Bundle;
    .local v7, "resultCallback":Landroid/os/RemoteCallback;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2211
    return-void
.end method

.method public processInBackground()V
    .locals 3

    .line 1467
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1468
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1469
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 1526
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7f

    invoke-static {v0, v1, p2, p1, p3}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1527
    return-void
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I

    .line 2044
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 2045
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 2046
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 2047
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 2048
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    .line 2049
    iput p5, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    .line 2050
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2051
    return-void
.end method

.method public requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 8
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 2181
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    move-object v5, v0

    .line 2182
    .local v5, "cancellationSignal":Landroid/os/CancellationSignal;
    if-eqz p3, :cond_0

    .line 2183
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v5}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v0

    .line 2185
    .local v0, "transport":Landroid/os/ICancellationSignal;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2186
    .local v1, "cancellationResult":Landroid/os/Bundle;
    nop

    .line 2187
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2186
    const-string/jumbo v3, "key_cancellation_signal"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2188
    invoke-virtual {p3, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2190
    .end local v0    # "transport":Landroid/os/ICancellationSignal;
    .end local v1    # "cancellationResult":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 2192
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2190
    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    .end local p4    # "callback":Landroid/os/RemoteCallback;
    .local v3, "activityToken":Landroid/os/IBinder;
    .local v4, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    .local v6, "callback":Landroid/os/RemoteCallback;
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2193
    return-void
.end method

.method public final runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 1409
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1410
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1411
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1412
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9e

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1413
    return-void
.end method

.method public scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1424
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    .line 1425
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1}, Landroid/app/ActivityThread;->-$$Nest$fgetmPendingAppInfoUpdates(Landroid/app/ActivityThread;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1426
    .local v1, "oldAi":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1427
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping application info changed for obsolete AI with TS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < already pending TS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2}, Landroid/app/ActivityThread;->-$$Nest$fgetmPendingAppInfoUpdates(Landroid/app/ActivityThread;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    monitor-exit v0

    return-void

    .line 1433
    .end local v1    # "oldAi":Landroid/content/pm/ApplicationInfo;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1435
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x9c

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 1436
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1437
    return-void

    .line 1433
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I
    .param p5, "bindSeq"    # J

    .line 1200
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1201
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1202
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1203
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1204
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 1205
    iput-wide p5, v0, Landroid/app/ActivityThread$BindServiceData;->bindSeq:J

    .line 1211
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleBindService. token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bindSeq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1215
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1216
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1578
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1579
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1580
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1581
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x86

    invoke-static {v1, v2, v0, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1582
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backupMode"    # I
    .param p3, "userId"    # I
    .param p4, "backupDestination"    # I

    .line 1167
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1168
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1169
    iput p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 1170
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1171
    iput p4, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupDestination:I

    .line 1173
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1174
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    .line 1186
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1187
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 1188
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 1189
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 1191
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleCreateService. token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1195
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1196
    return-void
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 1177
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1178
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1179
    iput p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1181
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1182
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2126
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2127
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .line 1416
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1417
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .line 2105
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2106
    return-void
.end method

.method public scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2154
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2155
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2156
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2157
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2158
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .line 1521
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1522
    return-void
.end method

.method public scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 2083
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2085
    return-void
.end method

.method public final schedulePing(Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "pong"    # Landroid/os/RemoteCallback;

    .line 1270
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1271
    return-void
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "ordered"    # Z
    .param p8, "assumeDelivered"    # Z
    .param p9, "sendingUser"    # I
    .param p10, "processState"    # I
    .param p11, "sendingUid"    # I
    .param p12, "sendingPackage"    # Ljava/lang/String;

    .line 1140
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v2, 0x0

    move/from16 v3, p10

    invoke-virtual {v1, v3, v2}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1141
    new-instance v4, Landroid/app/ActivityThread$ReceiverData;

    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 1142
    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v11, p8

    move/from16 v13, p9

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v4 .. v15}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZLandroid/os/IBinder;IILjava/lang/String;)V

    .line 1144
    .local v4, "r":Landroid/app/ActivityThread$ReceiverData;
    move-object/from16 v1, p2

    iput-object v1, v4, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 1145
    iget-object v2, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v5, 0x71

    invoke-virtual {v2, v5, v4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1146
    return-void
.end method

.method public final scheduleReceiverList(Ljava/util/List;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ReceiverInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ReceiverInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1150
    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ReceiverInfo;

    .line 1151
    .local v2, "r":Landroid/app/ReceiverInfo;
    iget-boolean v3, v2, Landroid/app/ReceiverInfo;->registered:Z

    if-eqz v3, :cond_0

    .line 1152
    iget-object v5, v2, Landroid/app/ReceiverInfo;->receiver:Landroid/content/IIntentReceiver;

    iget-object v6, v2, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    iget v7, v2, Landroid/app/ReceiverInfo;->resultCode:I

    iget-object v8, v2, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    iget-object v9, v2, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    iget-boolean v10, v2, Landroid/app/ReceiverInfo;->ordered:Z

    iget-boolean v11, v2, Landroid/app/ReceiverInfo;->sticky:Z

    iget-boolean v12, v2, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    iget v13, v2, Landroid/app/ReceiverInfo;->sendingUser:I

    iget v14, v2, Landroid/app/ReceiverInfo;->processState:I

    iget v15, v2, Landroid/app/ReceiverInfo;->sendingUid:I

    iget-object v3, v2, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v16, v3

    invoke-virtual/range {v4 .. v16}, Landroid/app/ActivityThread$ApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    goto :goto_1

    .line 1157
    :cond_0
    iget-object v3, v2, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    iget-object v4, v2, Landroid/app/ReceiverInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v2, Landroid/app/ReceiverInfo;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iget v6, v2, Landroid/app/ReceiverInfo;->resultCode:I

    iget-object v7, v2, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    iget-object v8, v2, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    iget-boolean v9, v2, Landroid/app/ReceiverInfo;->sync:Z

    iget-boolean v10, v2, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    iget v11, v2, Landroid/app/ReceiverInfo;->sendingUser:I

    iget v12, v2, Landroid/app/ReceiverInfo;->processState:I

    iget v13, v2, Landroid/app/ReceiverInfo;->sendingUid:I

    iget-object v14, v2, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    move-object/from16 v16, p0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move-object/from16 v28, v14

    invoke-virtual/range {v16 .. v28}, Landroid/app/ActivityThread$ApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    .line 1149
    .end local v2    # "r":Landroid/app/ReceiverInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    .line 1163
    .end local v0    # "i":I
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .locals 12
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "assumeDelivered"    # Z
    .param p9, "sendingUser"    # I
    .param p10, "processState"    # I
    .param p11, "sendingUid"    # I
    .param p12, "sendingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    move/from16 v11, p10

    invoke-virtual {v0, v11, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1499
    instance-of v0, p1, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    if-eqz v0, :cond_0

    .line 1500
    move-object v0, p1

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    move-object v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p11

    move-object/from16 v10, p12

    invoke-virtual/range {v0 .. v10}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V

    goto/16 :goto_0

    .line 1504
    :cond_0
    move/from16 v9, p11

    move-object/from16 v10, p12

    const-string v0, " and "

    const-string/jumbo v2, "scheduleRegisteredReceiver() called for "

    const-string v3, "ActivityThread"

    if-nez p8, :cond_1

    .line 1505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " without mechanism to finish delivery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_1
    const/4 v4, -0x1

    if-ne v9, v4, :cond_2

    if-eqz v10, :cond_3

    .line 1509
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (UID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") without mechanism to propagate the sender\'s identity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_3
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1517
    :goto_0
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/content/pm/ParceledListSlice;

    .line 1232
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1234
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ServiceStartArgs;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1235
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ServiceStartArgs;

    .line 1236
    .local v2, "ssa":Landroid/app/ServiceStartArgs;
    new-instance v3, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v3}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 1237
    .local v3, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v3, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 1238
    iget-boolean v4, v2, Landroid/app/ServiceStartArgs;->taskRemoved:Z

    iput-boolean v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 1239
    iget v4, v2, Landroid/app/ServiceStartArgs;->startId:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 1240
    iget v4, v2, Landroid/app/ServiceStartArgs;->flags:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 1241
    iget-object v4, v2, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    iput-object v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 1243
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scheduleServiceArgs. token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1247
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v5, 0x73

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1234
    .end local v2    # "ssa":Landroid/app/ServiceStartArgs;
    .end local v3    # "s":Landroid/app/ActivityThread$ServiceArgsData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1249
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1252
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleStopService. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1256
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1257
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .line 1420
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1421
    return-void
.end method

.method public scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V
    .locals 0
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;
    .param p2, "transaction"    # Landroid/window/TaskFragmentTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2174
    invoke-interface {p1, p2}, Landroid/window/ITaskFragmentOrganizer;->onTransactionReady(Landroid/window/TaskFragmentTransaction;)V

    .line 2175
    return-void
.end method

.method public final scheduleTimeoutService(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I

    .line 1261
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleTimeoutService. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1265
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa7

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1266
    return-void
.end method

.method public final scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startId"    # I
    .param p3, "fgsType"    # I

    .line 1276
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleTimeoutServiceForType. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1280
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xac

    invoke-static {v0, v1, p1, p2, p3}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1281
    return-void
.end method

.method public scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2167
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 2168
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 2079
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x90

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 2080
    return-void
.end method

.method public scheduleTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .line 2067
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 2068
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2067
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 2068
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 2070
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 2071
    .local v1, "choreographer":Landroid/view/Choreographer;
    if-eqz v1, :cond_0

    .line 2072
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 2074
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 2076
    :goto_0
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1219
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1220
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1221
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1222
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/app/ActivityThread$BindServiceData;->bindSeq:J

    .line 1224
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleUnbindService. token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1228
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1229
    return-void
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 2054
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2055
    return-void
.end method

.method public setNetworkBlockSeq(J)V
    .locals 2
    .param p1, "procStateSeq"    # J

    .line 2098
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmNetworkPolicyLock(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2099
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$fputmNetworkBlockSeq(Landroid/app/ActivityThread;J)V

    .line 2100
    monitor-exit v0

    .line 2101
    return-void

    .line 2100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProcessState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 2088
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 2089
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 3
    .param p1, "group"    # I

    .line 1566
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1569
    goto :goto_0

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed setting process group to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1570
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startBinderTracking()V
    .locals 3

    .line 2138
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2139
    return-void
.end method

.method public stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 2144
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/16 v2, 0x97

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2147
    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2148
    throw v0

    .line 2145
    :catch_0
    move-exception v0

    .line 2147
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2148
    nop

    .line 2149
    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 2038
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2039
    return-void
.end method

.method public updateHttpProxy()V
    .locals 4

    .line 1453
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    monitor-enter v0

    .line 1454
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1455
    .local v1, "app":Landroid/app/Application;
    if-nez v1, :cond_0

    .line 1458
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/ActivityThread;->-$$Nest$fputmUpdateHttpProxyOnBind(Landroid/app/ActivityThread;Z)V

    .line 1459
    monitor-exit v0

    return-void

    .line 1461
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    invoke-static {v1}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 1464
    return-void

    .line 1461
    .end local v1    # "app":Landroid/app/Application;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 2058
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 2059
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 2060
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 2061
    invoke-direct {p0, p2}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideScale(Landroid/content/res/CompatibilityInfo;)V

    .line 2062
    invoke-direct {p0, p2}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideDisplayRotation(Landroid/content/res/CompatibilityInfo;)V

    .line 2063
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2064
    return-void
.end method

.method public final updateTimePrefs(I)V
    .locals 1
    .param p1, "timeFormatPreference"    # I

    .line 2112
    if-nez p1, :cond_0

    .line 2113
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v0, "timeFormatPreferenceBool":Ljava/lang/Boolean;
    goto :goto_0

    .line 2114
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2115
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    goto :goto_0

    .line 2119
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_1
    const/4 v0, 0x0

    .line 2121
    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :goto_0
    invoke-static {v0}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 2122
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    .line 1440
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1441
    return-void
.end method

.method public updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .locals 3
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

    .line 2243
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2244
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2245
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2246
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2247
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2248
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 2249
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 2250
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xa3

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2251
    return-void
.end method
