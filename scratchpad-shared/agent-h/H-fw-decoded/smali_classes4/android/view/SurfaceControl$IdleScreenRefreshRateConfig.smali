.class public final Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleScreenRefreshRateConfig"
.end annotation


# instance fields
.field public blacklist timeoutMillis:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 2309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2310
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 2311
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "timeoutMillis"    # I

    .line 2313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2314
    iput p1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 2315
    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V
    .locals 1
    .param p1, "other"    # Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2349
    if-eqz p1, :cond_0

    .line 2350
    iget v0, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    iput v0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    .line 2352
    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 2322
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 2323
    return v0

    .line 2326
    :cond_0
    instance-of v1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 2331
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2332
    .local v1, "idleScreenRefreshRateConfig":Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
    iget v3, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    iget v4, v1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 2327
    .end local v1    # "idleScreenRefreshRateConfig":Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
    :cond_3
    :goto_1
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 2337
    iget v0, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timeoutMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
