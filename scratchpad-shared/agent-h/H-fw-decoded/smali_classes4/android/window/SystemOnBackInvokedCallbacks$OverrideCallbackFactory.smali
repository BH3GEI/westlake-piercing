.class abstract Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;
.super Ljava/lang/Object;
.source "SystemOnBackInvokedCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SystemOnBackInvokedCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "OverrideCallbackFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mObjectMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/ref/WeakReference<",
            "TTYPE;>;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/window/SystemOverrideOnBackInvokedCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 95
    .local p0, "this":Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;, "Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory<TTYPE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/SystemOnBackInvokedCallbacks-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist createCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Landroid/window/SystemOverrideOnBackInvokedCallback;"
        }
    .end annotation
.end method

.method blacklist getOverrideCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTYPE;)",
            "Landroid/window/SystemOverrideOnBackInvokedCallback;"
        }
    .end annotation

    .line 103
    .local p0, "this":Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;, "Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory<TTYPE;>;"
    .local p1, "object":Ljava/lang/Object;, "TTYPE;"
    if-eqz p1, :cond_4

    .line 106
    iget-object v0, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/window/SystemOverrideOnBackInvokedCallback;>;"
    :try_start_0
    iget-object v2, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 109
    iget-object v3, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 110
    .local v3, "next":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TTYPE;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 111
    iget-object v4, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v1, v4

    .line 112
    goto :goto_1

    .line 108
    .end local v3    # "next":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TTYPE;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 115
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/SystemOverrideOnBackInvokedCallback;

    monitor-exit v0

    return-object v2

    .line 118
    :cond_2
    invoke-virtual {p0, p1}, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->createCallback(Ljava/lang/Object;)Landroid/window/SystemOverrideOnBackInvokedCallback;

    move-result-object v2

    .line 119
    .local v2, "contextCallback":Landroid/window/SystemOverrideOnBackInvokedCallback;
    if-eqz v2, :cond_3

    .line 120
    iget-object v3, p0, Landroid/window/SystemOnBackInvokedCallbacks$OverrideCallbackFactory;->mObjectMap:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_3
    monitor-exit v0

    return-object v2

    .line 124
    .end local v1    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/window/SystemOverrideOnBackInvokedCallback;>;"
    .end local v2    # "contextCallback":Landroid/window/SystemOverrideOnBackInvokedCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 104
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
