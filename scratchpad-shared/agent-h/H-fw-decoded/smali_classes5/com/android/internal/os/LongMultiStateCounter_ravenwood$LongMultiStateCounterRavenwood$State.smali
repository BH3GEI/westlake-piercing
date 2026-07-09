.class Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;
.super Ljava/lang/Object;
.source "LongMultiStateCounter_ravenwood.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private blacklist mCounter:J

.field private blacklist mTimeInStateSinceUpdate:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCounter(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->mCounter:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->mTimeInStateSinceUpdate:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCounter(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->mCounter:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeInStateSinceUpdate(Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;->mTimeInStateSinceUpdate:J

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/LongMultiStateCounter_ravenwood-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/LongMultiStateCounter_ravenwood$LongMultiStateCounterRavenwood$State;-><init>()V

    return-void
.end method
