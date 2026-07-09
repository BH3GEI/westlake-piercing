.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
    }
.end annotation


# static fields
.field public static final ACTION_APPWIDGET_BIND:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_BIND"

.field public static final ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final ACTION_APPWIDGET_ENABLE_AND_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLE_AND_UPDATE"

.field public static final ACTION_APPWIDGET_HOST_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_HOST_RESTORED"

.field public static final ACTION_APPWIDGET_OPTIONS_CHANGED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

.field public static final ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final ACTION_APPWIDGET_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_RESTORED"

.field public static final ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final EVENT_CATEGORY_APPWIDGET:Ljava/lang/String; = "android.appwidget"

.field public static final EVENT_TYPE_WIDGET_INTERACTION:Ljava/lang/String; = "widget_interaction"

.field public static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final EXTRA_APPWIDGET_OLD_IDS:Ljava/lang/String; = "appWidgetOldIds"

.field public static final EXTRA_APPWIDGET_OPTIONS:Ljava/lang/String; = "appWidgetOptions"

.field public static final EXTRA_APPWIDGET_PREVIEW:Ljava/lang/String; = "appWidgetPreview"

.field public static final EXTRA_APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final EXTRA_APPWIDGET_PROVIDER_PROFILE:Ljava/lang/String; = "appWidgetProviderProfile"

.field public static final EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"

.field public static final EXTRA_EVENT_CLICKED_VIEWS:Ljava/lang/String; = "android.appwidget.extra.EVENT_CLICKED_VIEWS"

.field public static final EXTRA_EVENT_DURATION_MS:Ljava/lang/String; = "android.appwidget.extra.EVENT_DURATION_MS"

.field public static final EXTRA_EVENT_POSITION_RECT:Ljava/lang/String; = "android.appwidget.extra.EVENT_POSITION_RECT"

.field public static final EXTRA_EVENT_SCROLLED_VIEWS:Ljava/lang/String; = "android.appwidget.extra.EVENT_SCROLLED_VIEWS"

.field public static final EXTRA_HOST_ID:Ljava/lang/String; = "hostId"

.field public static final INVALID_APPWIDGET_ID:I = 0x0

.field public static final META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field public static final OPTION_APPWIDGET_HOST_CATEGORY:Ljava/lang/String; = "appWidgetCategory"

.field public static final OPTION_APPWIDGET_MAX_HEIGHT:Ljava/lang/String; = "appWidgetMaxHeight"

.field public static final OPTION_APPWIDGET_MAX_WIDTH:Ljava/lang/String; = "appWidgetMaxWidth"

.field public static final OPTION_APPWIDGET_MIN_HEIGHT:Ljava/lang/String; = "appWidgetMinHeight"

.field public static final OPTION_APPWIDGET_MIN_WIDTH:Ljava/lang/String; = "appWidgetMinWidth"

.field public static final OPTION_APPWIDGET_RESTORE_COMPLETED:Ljava/lang/String; = "appWidgetRestoreCompleted"

.field public static final OPTION_APPWIDGET_SIZES:Ljava/lang/String; = "appWidgetSizes"

.field private static final TAG:Ljava/lang/String; = "AppWidgetManager"

.field private static sUpdateExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHasPostedLegacyLists:Z

.field private mMaxBitmapMemory:I

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/internal/appwidget/IAppWidgetService;

.field private mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;


# direct methods
.method public static synthetic $r8$lambda$Emo9F9Eo3H92TWufpOrPKUtYf-g(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$updateAppWidget$5([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QqdazheZhcerN4Y0qy91aYaLrT4(Landroid/appwidget/AppWidgetManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$notifyCollectionWidgetChange$9(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKLPyaeqLNLNb3560d7QJuq2DwQ(Landroid/appwidget/AppWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetManager;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$eLfJmuev9KseIIWrQoFmxYrV-jE(Landroid/appwidget/AppWidgetManager;[II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$notifyAppWidgetViewDataChanged$8([II)V

    return-void
.end method

.method public static synthetic $r8$lambda$f_OVkK3KW0mzmRH9rcv5fxfoLF4(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$updateAppWidget$7(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ondr49HbQW1wDxCAX8a9ES8Uv6A(Landroid/appwidget/AppWidgetManager;[ILandroid/widget/RemoteViews;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->lambda$partiallyUpdateAppWidget$6([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBR9PAOwcEI1Yyr9xw1B15idXJ4(Landroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->lambda$tryAdapterConversion$4(Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/appwidget/IAppWidgetService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/appwidget/IAppWidgetService;

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I

    .line 601
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    .line 621
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    .line 622
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    .line 623
    iput-object p2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 624
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 625
    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    .line 626
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 627
    return-void

    .line 631
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->getMaxBitmapMemory()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    const-string v2, "Error setting the maximum bitmap memory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda7;-><init>(Landroid/appwidget/AppWidgetManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 652
    return-void
.end method

.method private bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "appWidgetId"    # I
    .param p2, "profileId"    # I
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1417
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1418
    const/4 v0, 0x0

    return v0

    .line 1421
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "appWidgetId":I
    .end local p2    # "profileId":I
    .end local p3    # "provider":Landroid/content/ComponentName;
    .end local p4    # "options":Landroid/os/Bundle;
    .local v3, "appWidgetId":I
    .local v4, "profileId":I
    .local v5, "provider":Landroid/content/ComponentName;
    .local v6, "options":Landroid/os/Bundle;
    :try_start_1
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 1423
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "appWidgetId":I
    .end local v4    # "profileId":I
    .end local v5    # "provider":Landroid/content/ComponentName;
    .end local v6    # "options":Landroid/os/Bundle;
    .restart local p1    # "appWidgetId":I
    .restart local p2    # "profileId":I
    .restart local p3    # "provider":Landroid/content/ComponentName;
    .restart local p4    # "options":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 1424
    .end local p2    # "profileId":I
    .end local p3    # "provider":Landroid/content/ComponentName;
    .end local p4    # "options":Landroid/os/Bundle;
    .restart local v3    # "appWidgetId":I
    .restart local v4    # "profileId":I
    .restart local v5    # "provider":Landroid/content/ComponentName;
    .restart local v6    # "options":Landroid/os/Bundle;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method private static createAndStartNewHandler(Ljava/lang/String;I)Landroid/os/Handler;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "priority"    # I

    .line 1639
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1640
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1641
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    return-object v1
.end method

.method private static createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;
    .locals 3

    .line 1630
    sget-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 1631
    new-instance v0, Landroid/os/HandlerExecutor;

    const-string/jumbo v1, "widget_manager_update_helper_thread"

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/appwidget/AppWidgetManager;->createAndStartNewHandler(Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    .line 1635
    :cond_0
    sget-object v0, Landroid/appwidget/AppWidgetManager;->sUpdateExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static createWidgetInteractionEvent(IJLandroid/graphics/Rect;[I[I)Landroid/os/PersistableBundle;
    .locals 5
    .param p0, "appWidgetId"    # I
    .param p1, "durationMs"    # J
    .param p3, "position"    # Landroid/graphics/Rect;
    .param p4, "clickedIds"    # [I
    .param p5, "scrolledIds"    # [I

    .line 1609
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 1610
    .local v0, "extras":Landroid/os/PersistableBundle;
    const-string v1, "android.app.usage.extra.EVENT_ACTION"

    const-string/jumbo v2, "widget_interaction"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-string v1, "android.app.usage.extra.EVENT_CATEGORY"

    const-string v2, "android.appwidget"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1613
    const-string v1, "android.appwidget.extra.EVENT_DURATION_MS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 1614
    if-eqz p3, :cond_0

    .line 1615
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const-string v2, "android.appwidget.extra.EVENT_POSITION_RECT"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1618
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-lez v1, :cond_1

    .line 1619
    const-string v1, "android.appwidget.extra.EVENT_CLICKED_VIEWS"

    invoke-virtual {v0, v1, p4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1621
    :cond_1
    if-eqz p5, :cond_2

    array-length v1, p5

    if-lez v1, :cond_2

    .line 1622
    const-string v1, "android.appwidget.extra.EVENT_SCROLLED_VIEWS"

    invoke-virtual {v0, v1, p5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1624
    :cond_2
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 610
    const-string v0, "appwidget"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 640
    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "p"    # Landroid/content/ComponentName;

    .line 642
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 643
    .local v0, "clazz":Ljava/lang/Class;
    const-class v1, Landroid/appwidget/AppWidgetProvider;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 644
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$new$2(I)[Landroid/content/ComponentName;
    .locals 1
    .param p0, "x$0"    # I

    .line 647
    new-array v0, p0, [Landroid/content/ComponentName;

    return-object v0
.end method

.method private synthetic lambda$new$3()V
    .locals 3

    .line 637
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 639
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda3;-><init>()V

    .line 640
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda5;-><init>()V

    .line 647
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 637
    invoke-interface {v0, v1}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyProviderInheritance([Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    const-string v2, "Notify service of inheritance info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyAppWidgetViewDataChanged$8([II)V
    .locals 0
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    .line 929
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyCollectionWidgetChange([II)V

    return-void
.end method

.method static synthetic lambda$notifyCollectionWidgetChange$10(I)[Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p0, "x$0"    # I

    .line 959
    new-array v0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method

.method private synthetic lambda$notifyCollectionWidgetChange$9(II)V
    .locals 3
    .param p1, "widgetId"    # I
    .param p2, "viewId"    # I

    .line 950
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 951
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    .end local v0    # "views":Landroid/widget/RemoteViews;
    :cond_0
    goto :goto_0

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    const-string v2, "Error notifying changes in RemoteViews"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$partiallyUpdateAppWidget$6([ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "appWidgetIds"    # [I
    .param p2, "view"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic lambda$tryAdapterConversion$4(Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V
    .locals 2
    .param p1, "viewsCopy"    # Landroid/widget/RemoteViews;
    .param p2, "action"    # Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;
    .param p3, "failureMsg"    # Ljava/lang/String;

    .line 663
    :try_start_0
    iget v0, p0, Landroid/appwidget/AppWidgetManager;->mMaxBitmapMemory:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mServiceCollectionCache:Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->collectAllIntents(ILandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 664
    invoke-interface {p2, p1}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    invoke-static {v1, p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateAppWidget$5([ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "appWidgetIds"    # [I
    .param p2, "view"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 709
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private synthetic lambda$updateAppWidget$7(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "view"    # Landroid/widget/RemoteViews;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private notifyCollectionWidgetChange([II)V
    .locals 4
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    .line 945
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v0, "updateFutures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 947
    aget v2, p1, v1

    .line 948
    .local v2, "widgetId":I
    new-instance v3, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager;II)V

    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    nop

    .end local v2    # "widgetId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 959
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    nop

    .end local v0    # "updateFutures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;>;"
    goto :goto_1

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppWidgetManager"

    const-string v2, "Error notifying changes for all widgets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V
    .locals 4
    .param p2, "original"    # Landroid/widget/RemoteViews;
    .param p3, "failureMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<",
            "Landroid/widget/RemoteViews;",
            ">;",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 657
    .local p1, "action":Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;, "Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer<Landroid/widget/RemoteViews;>;"
    invoke-static {}, Landroid/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 659
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    if-eqz v0, :cond_3

    .line 660
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 661
    .local v0, "viewsCopy":Landroid/widget/RemoteViews;
    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, p1, p3}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda8;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Ljava/lang/String;)V

    .line 670
    .local v1, "updateWidgetWithTask":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 671
    invoke-static {}, Landroid/appwidget/AppWidgetManager;->createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 672
    return-void

    .line 675
    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 676
    .end local v0    # "viewsCopy":Landroid/widget/RemoteViews;
    .end local v1    # "updateWidgetWithTask":Ljava/lang/Runnable;
    goto :goto_2

    .line 678
    :cond_3
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;->acceptOrThrow(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    nop

    .line 683
    :goto_2
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    .line 1161
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1162
    return-void

    .line 1164
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 1165
    return-void
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1184
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1185
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    .line 1188
    return-void
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    .line 1207
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1208
    const/4 v0, 0x0

    return v0

    .line 1210
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1234
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1235
    const/4 v0, 0x0

    return v0

    .line 1237
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1262
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1263
    const/4 v0, 0x0

    return v0

    .line 1265
    :cond_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bindRemoteViewsService(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/IServiceConnection;I)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "connection"    # Landroid/app/IServiceConnection;
    .param p5, "flags"    # I

    .line 1370
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1371
    const/4 v0, 0x0

    return v0

    .line 1374
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1375
    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1376
    invoke-static {p5}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1374
    move v3, p2

    move-object v4, p3

    move-object v7, p4

    .end local p2    # "appWidgetId":I
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "connection":Landroid/app/IServiceConnection;
    .local v3, "appWidgetId":I
    .local v4, "intent":Landroid/content/Intent;
    .local v7, "connection":Landroid/app/IServiceConnection;
    :try_start_1
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;J)Z

    move-result p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return p2

    .line 1377
    :catch_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v3    # "appWidgetId":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "connection":Landroid/app/IServiceConnection;
    .restart local p2    # "appWidgetId":I
    .restart local p3    # "intent":Landroid/content/Intent;
    .restart local p4    # "connection":Landroid/app/IServiceConnection;
    :catch_1
    move-exception v0

    move v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object p2, v0

    .line 1378
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "connection":Landroid/app/IServiceConnection;
    .restart local v3    # "appWidgetId":I
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "connection":Landroid/app/IServiceConnection;
    .local p2, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p3

    throw p3
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 2
    .param p1, "provider"    # Landroid/content/ComponentName;

    .line 1390
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1391
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 1394
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .param p1, "appWidgetId"    # I

    .line 1128
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    const-string v1, "AppWidgetManager"

    if-nez v0, :cond_0

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service wasn\'t initialized, appWidgetId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v0, 0x0

    return-object v0

    .line 1133
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 1134
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_1

    .line 1136
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 1138
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App widget provider info is null. PackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appWidgetId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    :goto_0
    return-object v0

    .line 1142
    .end local v0    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "appWidgetId"    # I

    .line 750
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 751
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    .line 754
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1048
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1050
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledProviders(I)Ljava/util/List;
    .locals 1
    .param p1, "categoryFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1069
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1071
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledProvidersForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1031
    if-eqz p1, :cond_1

    .line 1036
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1037
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1039
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1032
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "A non-null package must be passed to this method. If you want all widgets regardless of package, see getInstalledProvidersForProfile(UserHandle)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "categoryFilter"    # I
    .param p2, "profile"    # Landroid/os/UserHandle;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1097
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1100
    :cond_0
    if-nez p2, :cond_1

    .line 1101
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    .line 1105
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 1106
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1105
    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1107
    .local v0, "providers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v0, :cond_2

    .line 1108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1110
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1112
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V

    .line 1113
    .end local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    goto :goto_0

    .line 1114
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1115
    .end local v0    # "providers":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "profile"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1006
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1008
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetPreview(Landroid/content/ComponentName;Landroid/os/UserHandle;I)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "profile"    # Landroid/os/UserHandle;
    .param p3, "widgetCategory"    # I

    .line 1565
    if-nez p2, :cond_0

    .line 1566
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    move-object p2, v0

    .line 1568
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->getWidgetPreview(Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/widget/RemoteViews;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1299
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1300
    const/4 v0, 0x0

    return v0

    .line 1303
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1279
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1280
    const/4 v0, 0x0

    return v0

    .line 1283
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1404
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1405
    const/4 v0, 0x0

    return v0

    .line 1408
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isRequestPinAppWidgetSupported()Z
    .locals 2

    .line 1434
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0}, Lcom/android/internal/appwidget/IAppWidgetService;->isRequestPinAppWidgetSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteAppWidgetTapped(I)V
    .locals 2
    .param p1, "appWidgetId"    # I

    .line 1504
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->noteAppWidgetTapped(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    nop

    .line 1508
    return-void

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyAppWidgetViewDataChanged(II)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 984
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 985
    return-void

    .line 987
    :cond_0
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 988
    return-void
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 2
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 922
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 923
    return-void

    .line 926
    :cond_0
    invoke-static {}, Landroid/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 928
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetManager;->mHasPostedLegacyLists:Z

    .line 929
    invoke-static {}, Landroid/appwidget/AppWidgetManager;->createUpdateExecutorIfNull()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda9;-><init>(Landroid/appwidget/AppWidgetManager;[II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 932
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetManager;->notifyCollectionWidgetChange([II)V

    goto :goto_0

    .line 936
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    nop

    .line 941
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 845
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 846
    return-void

    .line 848
    :cond_0
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 849
    return-void
.end method

.method public partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 811
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 812
    return-void

    .line 815
    :cond_0
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda10;-><init>(Landroid/appwidget/AppWidgetManager;[I)V

    const-string v1, "Error partially updating app widget views in background"

    invoke-direct {p0, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public removeWidgetPreview(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "widgetCategories"    # I

    .line 1588
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->removeWidgetPreview(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    nop

    .line 1592
    return-void

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestPinAppWidget(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "successCallback"    # Landroid/app/PendingIntent;

    .line 1446
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public requestPinAppWidget(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "successCallback"    # Landroid/app/PendingIntent;

    .line 1489
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    .line 1490
    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 1489
    :goto_0
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "permission"    # Z

    .line 1340
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1341
    return-void

    .line 1344
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    nop

    .line 1348
    return-void

    .line 1345
    :catch_0
    move-exception v0

    .line 1346
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Z

    .line 1320
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1321
    return-void

    .line 1323
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    .line 1324
    return-void
.end method

.method public setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z
    .locals 2
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "widgetCategories"    # I
    .param p3, "preview"    # Landroid/widget/RemoteViews;

    .line 1540
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setWidgetPreview(Landroid/content/ComponentName;ILandroid/widget/RemoteViews;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 780
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 781
    return-void

    .line 783
    :cond_0
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 784
    return-void
.end method

.method public updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 865
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 866
    return-void

    .line 869
    :cond_0
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda6;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;)V

    const-string v1, "Error updating app widget view using provider in background"

    invoke-direct {p0, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method public updateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 705
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 706
    return-void

    .line 709
    :cond_0
    new-instance v0, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$$ExternalSyntheticLambda11;-><init>(Landroid/appwidget/AppWidgetManager;[I)V

    const-string v1, "Error updating app widget views in background"

    invoke-direct {p0, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->tryAdapterConversion(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 728
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 729
    return-void

    .line 732
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    nop

    .line 736
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "metaDataKey"    # Ljava/lang/String;

    .line 893
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 894
    return-void

    .line 897
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    nop

    .line 901
    return-void

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
