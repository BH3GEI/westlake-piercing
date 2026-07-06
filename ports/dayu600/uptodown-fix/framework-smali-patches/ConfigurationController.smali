.class Landroid/app/ConfigurationController;
.super Ljava/lang/Object;
.source "ConfigurationController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigurationController"


# instance fields
.field private final mActivityThread:Landroid/app/ActivityThreadInternal;

.field private mCompatConfiguration:Landroid/content/res/Configuration;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mPendingConfiguration:Landroid/content/res/Configuration;

.field private final mResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method constructor <init>(Landroid/app/ActivityThreadInternal;)V
    .registers 3
    .param p1, "activityThread"    # Landroid/app/ActivityThreadInternal;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 60
    iput-object p1, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    .line 61
    return-void
.end method

.method static createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 3
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "override"    # Landroid/content/res/Configuration;

    .line 290
    if-nez p1, :cond_3

    .line 291
    return-object p0

    .line 293
    :cond_3
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 294
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 295
    return-object v0
.end method


# virtual methods
.method final applyCompatConfiguration()Landroid/content/res/Configuration;
    .registers 5

    .line 100
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 101
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 102
    .local v1, "displayDensity":I
    iget-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v2, :cond_f

    .line 103
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 105
    :cond_f
    iget-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 106
    iget-object v2, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v3, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1, v3}, Landroid/app/ResourcesManager;->applyCompatConfiguration(ILandroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 107
    iget-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 109
    :cond_22
    return-object v0
.end method

.method getCompatConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getCurDefaultDisplayDpi()I
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return v0
.end method

.method getPendingConfiguration(Z)Landroid/content/res/Configuration;
    .registers 5
    .param p1, "clearPending"    # Z

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "outConfig":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 78
    :try_start_4
    iget-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_e

    .line 79
    move-object v0, v2

    .line 80
    if-eqz p1, :cond_e

    .line 81
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 84
    :cond_e
    monitor-exit v1

    .line 85
    return-object v0

    .line 84
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v2
.end method

.method handleConfigurationChanged(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 137
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 138
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 139
    return-void
.end method

.method handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 127
    const-string v0, "configChanged"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 129
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 130
    return-void
.end method

.method handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .registers 13
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 152
    iget-object v0, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v0}, Landroid/app/ActivityThreadInternal;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 153
    .local v0, "systemTheme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v1}, Landroid/app/ActivityThreadInternal;->getSystemUiContextNoCreate()Landroid/app/ContextImpl;

    move-result-object v1

    .line 155
    .local v1, "systemUiContext":Landroid/app/ContextImpl;
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    goto :goto_19

    :cond_18
    move-object v3, v2

    .line 156
    .local v3, "systemUiTheme":Landroid/content/res/Resources$Theme;
    :goto_19
    iget-object v4, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 157
    :try_start_1c
    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_30

    .line 158
    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 159
    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object p1, v5

    .line 160
    iget v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, v5}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 162
    :cond_2e
    iput-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 165
    :cond_30
    if-nez p1, :cond_34

    .line 166
    monitor-exit v4

    return-void

    .line 174
    :cond_34
    iget-object v2, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x1

    goto :goto_42

    :cond_41
    move v2, v5

    .line 180
    .local v2, "equivalent":Z
    :goto_42
    iget-object v6, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v6}, Landroid/app/ActivityThreadInternal;->getApplication()Landroid/app/Application;

    move-result-object v6

    .line 181
    .local v6, "app":Landroid/app/Application;
    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 182
    .local v7, "appResources":Landroid/content/res/Resources;
    iget-object v8, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v8, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 183
    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 185
    iget-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v8, :cond_63

    .line 186
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 188
    :cond_63
    iget-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v8

    if-nez v8, :cond_6f

    if-nez p2, :cond_6f

    .line 189
    monitor-exit v4

    return-void

    .line 192
    :cond_6f
    iget-object v8, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v8

    .line 193
    .local v8, "configDiff":I
    invoke-virtual {p0}, Landroid/app/ConfigurationController;->applyCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    move-object p1, v9

    .line 194
    invoke-static {p1}, Landroid/graphics/HardwareRenderer;->sendDeviceConfigurationForDebugging(Landroid/content/res/Configuration;)V

    .line 196
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_87

    .line 197
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 200
    :cond_87
    if-eqz v3, :cond_93

    .line 201
    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v9

    and-int/2addr v9, v8

    if-eqz v9, :cond_93

    .line 202
    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 204
    .end local v6    # "app":Landroid/app/Application;
    .end local v7    # "appResources":Landroid/content/res/Resources;
    :cond_93
    monitor-exit v4
    :try_end_94
    .catchall {:try_start_1c .. :try_end_94} :catchall_b5

    .line 206
    iget-object v4, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    .line 207
    invoke-interface {v4, v5}, Landroid/app/ActivityThreadInternal;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 209
    .local v4, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-static {v8}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 211
    if-eqz v4, :cond_b4

    .line 212
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 213
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a4
    if-ge v6, v5, :cond_b4

    .line 214
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentCallbacks2;

    .line 215
    .local v7, "cb":Landroid/content/ComponentCallbacks2;
    if-nez v2, :cond_b1

    .line 216
    invoke-virtual {p0, v7, p1}, Landroid/app/ConfigurationController;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 213
    .end local v7    # "cb":Landroid/content/ComponentCallbacks2;
    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_a4

    .line 220
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_b4
    return-void

    .line 204
    .end local v2    # "equivalent":Z
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v8    # "configDiff":I
    :catchall_b5
    move-exception v2

    :try_start_b6
    monitor-exit v4
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v2
.end method

.method performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "cb"    # Landroid/content/ComponentCallbacks2;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    instance-of v1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_c

    .line 233
    move-object v1, p1

    check-cast v1, Landroid/view/ContextThemeWrapper;

    .line 234
    .local v1, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 240
    .end local v1    # "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    :cond_c
    invoke-static {p2, v0}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 242
    .local v1, "configToReport":Landroid/content/res/Configuration;
    invoke-interface {p1, v1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 243
    return-void
.end method

.method setCompatConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 90
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 91
    return-void
.end method

.method setConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 114
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 115
    return-void
.end method

.method updateDefaultDensity(I)V
    .registers 3
    .param p1, "densityDpi"    # I

    .line 247
    iget-object v0, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v0}, Landroid/app/ActivityThreadInternal;->isInDensityCompatMode()Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq p1, v0, :cond_13

    .line 250
    sput p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 251
    invoke-static {p1}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 253
    :cond_13
    return-void
.end method

.method updateLocaleListFromAppContext(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    if-nez p1, :cond_wlguard_ctx

    return-void

    :cond_wlguard_ctx
    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_wlguard_res

    return-void

    :cond_wlguard_res
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 267
    .local v0, "bestLocale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    if-nez v1, :cond_wlguard_rm

    return-void

    :cond_wlguard_rm
    invoke-virtual {v1}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 268
    .local v1, "newLocaleList":Landroid/os/LocaleList;
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v2

    .line 269
    .local v2, "newLocaleListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    if-ge v3, v2, :cond_33

    .line 270
    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 271
    invoke-static {v1, v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 272
    return-void

    .line 269
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 279
    .end local v3    # "i":I
    :cond_33
    new-instance v3, Landroid/os/LocaleList;

    invoke-direct {v3, v0, v1}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 280
    return-void
.end method

.method updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 65
    iget-object v0, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 66
    :try_start_3
    iget-object v1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_11

    .line 70
    :cond_e
    monitor-exit v0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_11
    :goto_11
    iput-object p1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 68
    monitor-exit v0

    return-object p1

    .line 70
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
