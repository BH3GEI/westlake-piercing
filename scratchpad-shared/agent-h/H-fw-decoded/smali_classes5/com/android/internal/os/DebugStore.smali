.class public Lcom/android/internal/os/DebugStore;
.super Ljava/lang/Object;
.source "DebugStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/DebugStore$DebugStoreNative;,
        Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;
    }
.end annotation


# static fields
.field private static blacklist sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smbeginEventNative(Ljava/lang/String;Ljava/util/List;)J
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/DebugStore;->beginEventNative(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smendEventNative(JLjava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/os/DebugStore;->endEventNative(JLjava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smrecordEventNative(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/DebugStore;->recordEventNative(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;-><init>(Lcom/android/internal/os/DebugStore-IA;)V

    sput-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist beginEventNative(Ljava/lang/String;Ljava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native blacklist endEventNative(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static greylist recordBroadcastHandleReceiver(Landroid/content/Intent;)J
    .locals 12
    .param p0, "intent"    # Landroid/content/Intent;

    .line 182
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 187
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 188
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 189
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 184
    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    const-string v6, "act"

    const-string v8, "cmp"

    const-string v10, "pkg"

    invoke-static/range {v2 .. v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 182
    const-string v2, "HandleReceiver"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordEventEnd(J)V
    .locals 2
    .param p0, "id"    # J

    .line 199
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->endEvent(JLjava/util/List;)V

    .line 200
    return-void
.end method

.method private static native blacklist recordEventNative(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public static greylist recordFinish(Ljava/lang/String;)V
    .locals 8
    .param p0, "receiverClassName"    # Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 144
    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    const-string/jumbo v6, "rcv"

    invoke-static/range {v2 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 142
    const-string v2, "Finish"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 151
    return-void
.end method

.method public static greylist recordGoAsync(Ljava/lang/String;)V
    .locals 8
    .param p0, "receiverClassName"    # Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 126
    const-string/jumbo v2, "tname"

    const-string/jumbo v4, "tid"

    const-string/jumbo v6, "rcv"

    invoke-static/range {v2 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 124
    const-string v2, "GoAsync"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 133
    return-void
.end method

.method public static greylist recordLongLooperMessage(ILjava/lang/String;J)V
    .locals 7
    .param p0, "messageCode"    # I
    .param p1, "targetClass"    # Ljava/lang/String;
    .param p2, "elapsedTimeMs"    # J

    .line 162
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 166
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 164
    const-string v1, "code"

    const-string/jumbo v3, "trgt"

    const-string v5, "elapsed"

    invoke-static/range {v1 .. v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 162
    const-string v2, "LooperMsg"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->recordEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 171
    return-void
.end method

.method public static greylist recordServiceBind(ZLandroid/content/Intent;)J
    .locals 9
    .param p0, "isRebind"    # Z
    .param p1, "intent"    # Landroid/content/Intent;

    .line 104
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 108
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 110
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 112
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 114
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 106
    const-string/jumbo v1, "rebind"

    const-string v3, "act"

    const-string v5, "cmp"

    const-string v7, "pkg"

    invoke-static/range {v1 .. v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 104
    const-string v2, "SvcBind"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordServiceCreate(Landroid/content/pm/ServiceInfo;)J
    .locals 5
    .param p0, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 86
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 90
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    :cond_1
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v3, "name"

    const-string v4, "pkg"

    invoke-static {v3, v2, v4, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 86
    const-string v2, "SvcCreate"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist recordServiceOnStart(IILandroid/content/Intent;)J
    .locals 11
    .param p0, "startId"    # I
    .param p1, "flags"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 63
    sget-object v0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 67
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 73
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 75
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 65
    const-string/jumbo v1, "stId"

    const-string v3, "flg"

    const-string v5, "act"

    const-string v7, "comp"

    const-string v9, "pkg"

    invoke-static/range {v1 .. v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 63
    const-string v2, "SvcStart"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/os/DebugStore$DebugStoreNative;->beginEvent(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist setDebugStoreNative(Lcom/android/internal/os/DebugStore$DebugStoreNative;)V
    .locals 0
    .param p0, "nativeImpl"    # Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 51
    sput-object p0, Lcom/android/internal/os/DebugStore;->sDebugStoreNative:Lcom/android/internal/os/DebugStore$DebugStoreNative;

    .line 52
    return-void
.end method
