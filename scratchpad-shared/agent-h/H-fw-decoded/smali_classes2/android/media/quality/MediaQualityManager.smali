.class public final Landroid/media/quality/MediaQualityManager;
.super Ljava/lang/Object;
.source "MediaQualityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$PictureProfileCallback;,
        Landroid/media/quality/MediaQualityManager$ProfileQueryParams;,
        Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$SoundProfileCallback;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;,
        Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;,
        Landroid/media/quality/MediaQualityManager$AmbientBacklightEventTypes;
    }
.end annotation


# static fields
.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_DISABLED:I = 0x2

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_ENABLED:I = 0x1

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_INTERRUPTED:I = 0x4

.field public static final blacklist AMBIENT_BACKLIGHT_EVENT_METADATA:I = 0x3

.field public static final blacklist OPTION_INCLUDE_PARAMETERS:Ljava/lang/String; = "include_parameters"

.field private static final blacklist TAG:Ljava/lang/String; = "MediaQualityManager"


# instance fields
.field private final blacklist mAbCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAbLock:Ljava/lang/Object;

.field private final blacklist mApListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mApLock:Ljava/lang/Object;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPpCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPpLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/media/quality/IMediaQualityManager;

.field private final blacklist mSpCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSpLock:Ljava/lang/Object;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAbCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAbLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpCallbackRecords(Landroid/media/quality/MediaQualityManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpLock(Landroid/media/quality/MediaQualityManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/quality/IMediaQualityManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/media/quality/IMediaQualityManager;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    .line 117
    iput-object p1, p0, Landroid/media/quality/MediaQualityManager;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    .line 119
    iput-object p2, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    .line 120
    new-instance v0, Landroid/media/quality/MediaQualityManager$1;

    invoke-direct {v0, p0}, Landroid/media/quality/MediaQualityManager$1;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 163
    .local v0, "ppCallback":Landroid/media/quality/IPictureProfileCallback;
    new-instance v1, Landroid/media/quality/MediaQualityManager$2;

    invoke-direct {v1, p0}, Landroid/media/quality/MediaQualityManager$2;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 206
    .local v1, "spCallback":Landroid/media/quality/ISoundProfileCallback;
    new-instance v2, Landroid/media/quality/MediaQualityManager$3;

    invoke-direct {v2, p0}, Landroid/media/quality/MediaQualityManager$3;-><init>(Landroid/media/quality/MediaQualityManager;)V

    .line 218
    .local v2, "abCallback":Landroid/media/quality/IAmbientBacklightCallback;
    :try_start_0
    iget-object v3, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {v3, v0}, Landroid/media/quality/IMediaQualityManager;->registerPictureProfileCallback(Landroid/media/quality/IPictureProfileCallback;)V

    .line 220
    iget-object v3, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {v3, v1}, Landroid/media/quality/IMediaQualityManager;->registerSoundProfileCallback(Landroid/media/quality/ISoundProfileCallback;)V

    .line 221
    iget-object v3, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    invoke-interface {v3, v2}, Landroid/media/quality/IMediaQualityManager;->registerAmbientBacklightCallback(Landroid/media/quality/IAmbientBacklightCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    nop

    .line 226
    return-void

    .line 223
    :catch_0
    move-exception v3

    .line 224
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public whitelist addActiveProcessingPictureListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    .line 1157
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;>;"
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1160
    :try_start_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p1, v3}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    monitor-exit v0

    .line 1163
    return-void

    .line 1162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addGlobalActiveProcessingPictureListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    .line 1176
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;>;"
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    const/4 v3, 0x1

    invoke-direct {v2, p2, p1, v3}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    monitor-exit v0

    .line 1182
    return-void

    .line 1181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist createPictureProfile(Landroid/media/quality/PictureProfile;)V
    .locals 2
    .param p1, "pp"    # Landroid/media/quality/PictureProfile;

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->createPictureProfile(Landroid/media/quality/PictureProfile;Landroid/os/UserHandle;)Landroid/media/quality/PictureProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    nop

    .line 408
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createSoundProfile(Landroid/media/quality/SoundProfile;)V
    .locals 2
    .param p1, "sp"    # Landroid/media/quality/SoundProfile;

    .line 592
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->createSoundProfile(Landroid/media/quality/SoundProfile;Landroid/os/UserHandle;)Landroid/media/quality/SoundProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    nop

    .line 596
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailablePictureProfiles(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .locals 3
    .param p1, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 324
    if-nez p1, :cond_0

    .line 325
    :try_start_0
    invoke-static {}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$sfgetDEFAULT()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    move-result-object v0

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    .line 326
    .local v0, "optionsBundle":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getAvailablePictureProfiles(Landroid/os/Bundle;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 327
    .end local v0    # "optionsBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAvailableSoundProfiles(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .locals 3
    .param p1, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    .line 534
    if-nez p1, :cond_0

    .line 535
    :try_start_0
    invoke-static {}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$sfgetDEFAULT()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    move-result-object v0

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    .line 536
    .local v0, "optionsBundle":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getAvailableSoundProfiles(Landroid/os/Bundle;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 537
    .end local v0    # "optionsBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getParameterCapabilities(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/quality/ParameterCapability;",
            ">;"
        }
    .end annotation

    .line 639
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getParameterCapabilities(Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPictureProfile(ILjava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/media/quality/PictureProfile;
    .locals 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    .line 277
    if-nez p3, :cond_0

    .line 278
    :try_start_0
    invoke-static {}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$sfgetDEFAULT()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    move-result-object v0

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    .line 279
    .local v0, "optionsBundle":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getPictureProfile(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/media/quality/PictureProfile;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 280
    .end local v0    # "optionsBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPictureProfileAllowList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 657
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileAllowList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPictureProfileHandle([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "id"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfileHandle;",
            ">;"
        }
    .end annotation

    .line 376
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfileHandle([Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPictureProfilePackageNames()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getPictureProfilePackageNames(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPictureProfilesByPackage(Ljava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 302
    if-nez p2, :cond_0

    .line 303
    :try_start_0
    invoke-static {}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$sfgetDEFAULT()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    move-result-object v0

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    .line 304
    .local v0, "optionsBundle":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, p1, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getPictureProfilesByPackage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 306
    .end local v0    # "optionsBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSoundProfile(ILjava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/media/quality/SoundProfile;
    .locals 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    .line 487
    if-nez p3, :cond_0

    .line 488
    :try_start_0
    invoke-static {}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$sfgetDEFAULT()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    move-result-object v0

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    .line 489
    .local v0, "optionsBundle":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getSoundProfile(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/media/quality/SoundProfile;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 490
    .end local v0    # "optionsBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSoundProfileAllowList()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 689
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfileAllowList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSoundProfileHandle([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "id"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfileHandle;",
            ">;"
        }
    .end annotation

    .line 388
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfileHandle([Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSoundProfilePackageNames()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 575
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->getSoundProfilePackageNames(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSoundProfilesByPackage(Ljava/lang/String;Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/media/quality/MediaQualityManager$ProfileQueryParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/media/quality/MediaQualityManager$ProfileQueryParams;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    .line 513
    if-nez p2, :cond_0

    .line 514
    :try_start_0
    invoke-static {}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$sfgetDEFAULT()Landroid/media/quality/MediaQualityManager$ProfileQueryParams;

    move-result-object v0

    invoke-static {v0}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/media/quality/MediaQualityManager$ProfileQueryParams;->-$$Nest$mtoBundle(Landroid/media/quality/MediaQualityManager$ProfileQueryParams;)Landroid/os/Bundle;

    move-result-object v0

    .line 515
    .local v0, "optionsBundle":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v2, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v1, p1, v0, v2}, Landroid/media/quality/IMediaQualityManager;->getSoundProfilesByPackage(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 516
    .end local v0    # "optionsBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAmbientBacklightEnabled()Z
    .locals 2

    .line 861
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isAmbientBacklightEnabled(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAutoPictureQualityEnabled()Z
    .locals 2

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isAutoPictureQualityEnabled(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAutoSoundQualityEnabled()Z
    .locals 2

    .line 801
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isAutoSoundQualityEnabled(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSuperResolutionEnabled()Z
    .locals 2

    .line 772
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isSuperResolutionEnabled(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupported()Z
    .locals 2

    .line 715
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, v1}, Landroid/media/quality/IMediaQualityManager;->isSupported(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerAmbientBacklightCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    .line 814
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    monitor-exit v0

    .line 819
    return-void

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerPictureProfileCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$PictureProfileCallback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    .line 234
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$PictureProfileCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerSoundProfileCallback(Ljava/util/concurrent/Executor;Landroid/media/quality/MediaQualityManager$SoundProfileCallback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    .line 445
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;-><init>(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    monitor-exit v0

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeActiveProcessingPictureListener(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;>;)V"
        }
    .end annotation

    .line 1190
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/media/quality/ActiveProcessingPicture;>;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mApLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mApListenerRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1193
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;

    .line 1195
    .local v2, "record":Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;->getListener()Ljava/util/function/Consumer;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1196
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1197
    goto :goto_1

    .line 1199
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;
    :cond_0
    goto :goto_0

    .line 1200
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$ActiveProcessingPictureListenerRecord;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 1201
    return-void

    .line 1200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removePictureProfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileId"    # Ljava/lang/String;

    .line 433
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->removePictureProfile(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    nop

    .line 437
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeSoundProfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileId"    # Ljava/lang/String;

    .line 621
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->removeSoundProfile(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    nop

    .line 625
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAmbientBacklightEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 875
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAmbientBacklightEnabled(ZLandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    nop

    .line 879
    return-void

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/quality/AmbientBacklightSettings;

    .line 848
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAmbientBacklightSettings(Landroid/media/quality/AmbientBacklightSettings;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    nop

    .line 854
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAutoPictureQualityEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 733
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAutoPictureQualityEnabled(ZLandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    nop

    .line 737
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAutoSoundQualityEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 790
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setAutoSoundQualityEnabled(ZLandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    nop

    .line 794
    return-void

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDefaultPictureProfile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pictureProfileId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setDefaultPictureProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDefaultSoundProfile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "soundProfileId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 557
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setDefaultSoundProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPictureProfileAllowList(Ljava/util/List;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 671
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setPictureProfileAllowList(Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    nop

    .line 675
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSoundProfileAllowList(Ljava/util/List;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 703
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setSoundProfileAllowList(Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    nop

    .line 707
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSuperResolutionEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 761
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, v1}, Landroid/media/quality/IMediaQualityManager;->setSuperResolutionEnabled(ZLandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    nop

    .line 765
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterAmbientBacklightCallback(Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    .line 827
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mAbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mAbCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 830
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 831
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;

    .line 832
    .local v2, "record":Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$AmbientBacklightCallback;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 833
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 834
    goto :goto_1

    .line 836
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;
    :cond_0
    goto :goto_0

    .line 837
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$AmbientBacklightCallbackRecord;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 838
    return-void

    .line 837
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregisterPictureProfileCallback(Landroid/media/quality/MediaQualityManager$PictureProfileCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    .line 245
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mPpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mPpCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 248
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;

    .line 250
    .local v2, "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$PictureProfileCallback;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 251
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 252
    goto :goto_1

    .line 254
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;
    :cond_0
    goto :goto_0

    .line 255
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$PictureProfileCallbackRecord;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregisterSoundProfileCallback(Landroid/media/quality/MediaQualityManager$SoundProfileCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    .line 456
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mSpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mSpCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 459
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;

    .line 461
    .local v2, "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    invoke-virtual {v2}, Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;->getCallback()Landroid/media/quality/MediaQualityManager$SoundProfileCallback;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 462
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 463
    goto :goto_1

    .line 465
    .end local v2    # "record":Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;
    :cond_0
    goto :goto_0

    .line 466
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/quality/MediaQualityManager$SoundProfileCallbackRecord;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;)V
    .locals 2
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "pp"    # Landroid/media/quality/PictureProfile;

    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/quality/IMediaQualityManager;->updatePictureProfile(Ljava/lang/String;Landroid/media/quality/PictureProfile;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    nop

    .line 423
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;)V
    .locals 2
    .param p1, "profileId"    # Ljava/lang/String;
    .param p2, "sp"    # Landroid/media/quality/SoundProfile;

    .line 607
    :try_start_0
    iget-object v0, p0, Landroid/media/quality/MediaQualityManager;->mService:Landroid/media/quality/IMediaQualityManager;

    iget-object v1, p0, Landroid/media/quality/MediaQualityManager;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/quality/IMediaQualityManager;->updateSoundProfile(Ljava/lang/String;Landroid/media/quality/SoundProfile;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    nop

    .line 611
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
