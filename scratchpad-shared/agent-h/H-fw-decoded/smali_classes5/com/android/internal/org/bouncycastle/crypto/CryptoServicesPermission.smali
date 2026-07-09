.class public Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;
.super Ljava/security/Permission;
.source "CryptoServicesPermission.java"


# static fields
.field public static final blacklist CONSTRAINTS:Ljava/lang/String; = "constraints"

.field public static final blacklist DEFAULT_RANDOM:Ljava/lang/String; = "defaultRandomConfig"

.field public static final blacklist GLOBAL_CONFIG:Ljava/lang/String; = "globalConfig"

.field public static final blacklist THREAD_LOCAL_CONFIG:Ljava/lang/String; = "threadLocalConfig"


# instance fields
.field private final blacklist actions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_0

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    .line 70
    .local v0, "other":Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x1

    return v1

    .line 76
    .end local v0    # "other":Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getActions()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .locals 4
    .param p1, "permission"    # Ljava/security/Permission;

    .line 46
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_1

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    .line 50
    .local v0, "other":Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 52
    return v2

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    return v2

    .line 61
    .end local v0    # "other":Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
