.class Landroid/app/PropertyInvalidatedCache$NonceLocal;
.super Landroid/app/PropertyInvalidatedCache$NonceHandler;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonceLocal"
.end annotation


# instance fields
.field private mValue:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 1037
    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;-><init>(Ljava/lang/String;)V

    .line 1038
    return-void
.end method


# virtual methods
.method getNonceInternal()J
    .locals 2

    .line 1042
    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceLocal;->mShadowNonce:J

    return-wide v0
.end method

.method setNonceInternal(J)V
    .locals 0
    .param p1, "value"    # J

    .line 1047
    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache$NonceLocal;->mShadowNonce:J

    .line 1048
    return-void
.end method
