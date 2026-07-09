.class public interface abstract Landroid/app/trust/TrustManager$TrustListener;
.super Ljava/lang/Object;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrustListener"
.end annotation


# virtual methods
.method public abstract onEnabledTrustAgentsChanged(I)V
.end method

.method public abstract onIsActiveUnlockRunningChanged(ZI)V
.end method

.method public abstract onTrustChanged(ZZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTrustError(Ljava/lang/CharSequence;)V
.end method

.method public abstract onTrustManagedChanged(ZI)V
.end method
