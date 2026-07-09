.class Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;
.super Ljava/lang/Object;
.source "DebugStore.java"

# interfaces
.implements Lcom/android/internal/os/DebugStore$DebugStoreNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/DebugStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugStoreNativeImpl"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/DebugStore-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/DebugStore$DebugStoreNativeImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist beginEvent(Ljava/lang/String;Ljava/util/List;)J
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 228
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/android/internal/os/DebugStore;->-$$Nest$smbeginEventNative(Ljava/lang/String;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist endEvent(JLjava/util/List;)V
    .locals 0
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p3, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/android/internal/os/DebugStore;->-$$Nest$smendEventNative(JLjava/util/List;)V

    .line 234
    return-void
.end method

.method public blacklist recordEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/android/internal/os/DebugStore;->-$$Nest$smrecordEventNative(Ljava/lang/String;Ljava/util/List;)V

    .line 239
    return-void
.end method
