.class Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;
.super Ljava/lang/Object;
.source "LongArrayMultiStateCounter_ravenwood.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private blacklist mCounter:[J

.field private blacklist mTimeInStateSinceUpdate:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)[J
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->mCounter:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->mTimeInStateSinceUpdate:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCounter(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;[J)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->mCounter:[J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;->mTimeInStateSinceUpdate:J

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/LongArrayMultiStateCounter_ravenwood$LongArrayMultiStateCounterRavenwood$State;-><init>()V

    return-void
.end method
