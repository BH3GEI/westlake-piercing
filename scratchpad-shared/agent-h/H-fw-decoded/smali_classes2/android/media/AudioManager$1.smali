.class Landroid/media/AudioManager$1;
.super Landroid/os/IpcDataCache$QueryHandler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/IpcDataCache$QueryHandler<",
        "Landroid/media/AudioManager$VolumeCacheQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1252
    invoke-direct {p0}, Landroid/os/IpcDataCache$QueryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/media/AudioManager$VolumeCacheQuery;)Ljava/lang/Integer;
    .locals 4
    .param p1, "query"    # Landroid/media/AudioManager$VolumeCacheQuery;

    .line 1255
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1257
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetqueryCommand(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1262
    const-string v1, "AudioManager"

    goto :goto_0

    .line 1260
    :pswitch_0
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 1259
    :pswitch_1
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 1258
    :pswitch_2
    invoke-static {p1}, Landroid/media/AudioManager$VolumeCacheQuery;->-$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 1262
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a valid volume cache query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    const/4 v1, 0x0

    .line 1257
    :goto_1
    return-object v1

    .line 1266
    :catch_0
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic blacklist apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1252
    check-cast p1, Landroid/media/AudioManager$VolumeCacheQuery;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager$1;->apply(Landroid/media/AudioManager$VolumeCacheQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
