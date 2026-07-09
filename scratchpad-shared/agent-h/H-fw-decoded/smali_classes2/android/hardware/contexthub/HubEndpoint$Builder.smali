.class public final Landroid/hardware/contexthub/HubEndpoint$Builder;
.super Ljava/lang/Object;
.source "HubEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

.field private blacklist mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mMainExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

.field private blacklist mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mServiceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTag:Ljava/lang/String;

.field private blacklist mVersion:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mServiceInfos:Ljava/util/List;

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mPackageName:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mTag:Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    long-to-int v0, v0

    iput v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mVersion:I

    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 481
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/contexthub/HubEndpoint;
    .locals 7

    .line 569
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint;

    new-instance v1, Landroid/hardware/contexthub/HubEndpointInfo;

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mVersion:I

    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mTag:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mServiceInfos:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 572
    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    :goto_0
    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 574
    iget-object v5, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    :goto_1
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/contexthub/HubEndpoint;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpoint-IA;)V

    .line 569
    return-object v0
.end method

.method public whitelist setLifecycleCallback(Landroid/hardware/contexthub/HubEndpointLifecycleCallback;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .locals 1
    .param p1, "lifecycleCallback"    # Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 513
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 514
    return-object p0
.end method

.method public whitelist setLifecycleCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointLifecycleCallback;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "lifecycleCallback"    # Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 525
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 526
    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mLifecycleCallback:Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    .line 527
    return-object p0
.end method

.method public whitelist setMessageCallback(Landroid/hardware/contexthub/HubEndpointMessageCallback;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .locals 1
    .param p1, "messageCallback"    # Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 537
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 538
    return-object p0
.end method

.method public whitelist setMessageCallback(Ljava/util/concurrent/Executor;Landroid/hardware/contexthub/HubEndpointMessageCallback;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "messageCallback"    # Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 549
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 550
    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mMessageCallback:Landroid/hardware/contexthub/HubEndpointMessageCallback;

    .line 551
    return-object p0
.end method

.method public whitelist setServiceInfoCollection(Ljava/util/Collection;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;)",
            "Landroid/hardware/contexthub/HubEndpoint$Builder;"
        }
    .end annotation

    .line 562
    .local p1, "hubServiceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/contexthub/HubServiceInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mServiceInfos:Ljava/util/List;

    .line 563
    return-object p0
.end method

.method public whitelist setTag(Ljava/lang/String;)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 501
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mTag:Ljava/lang/String;

    .line 502
    return-object p0
.end method

.method public blacklist setVersion(I)Landroid/hardware/contexthub/HubEndpoint$Builder;
    .locals 0
    .param p1, "version"    # I

    .line 490
    iput p1, p0, Landroid/hardware/contexthub/HubEndpoint$Builder;->mVersion:I

    .line 491
    return-object p0
.end method
