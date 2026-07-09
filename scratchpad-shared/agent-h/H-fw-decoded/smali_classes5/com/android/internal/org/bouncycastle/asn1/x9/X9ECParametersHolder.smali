.class public abstract Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.super Ljava/lang/Object;
.source "X9ECParametersHolder.java"


# instance fields
.field private blacklist curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field private blacklist params:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
.end method

.method public declared-synchronized blacklist getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->createCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 22
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist getParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 32
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;->params:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
