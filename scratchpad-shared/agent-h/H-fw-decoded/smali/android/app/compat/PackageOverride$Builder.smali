.class public final Landroid/app/compat/PackageOverride$Builder;
.super Ljava/lang/Object;
.source "PackageOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/compat/PackageOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mMaxVersionCode:J

.field private mMinVersionCode:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    .line 172
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    return-void
.end method


# virtual methods
.method public build()Landroid/app/compat/PackageOverride;
    .locals 8

    .line 220
    iget-wide v0, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    iget-wide v2, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 224
    new-instance v1, Landroid/app/compat/PackageOverride;

    iget-wide v2, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    iget-wide v4, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    iget-boolean v6, p0, Landroid/app/compat/PackageOverride$Builder;->mEnabled:Z

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/app/compat/PackageOverride;-><init>(JJZLandroid/app/compat/PackageOverride-IA;)V

    return-object v1

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "minVersionCode must not be larger than maxVersionCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 208
    iput-boolean p1, p0, Landroid/app/compat/PackageOverride$Builder;->mEnabled:Z

    .line 209
    return-object p0
.end method

.method public setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;
    .locals 0
    .param p1, "maxVersionCode"    # J

    .line 197
    iput-wide p1, p0, Landroid/app/compat/PackageOverride$Builder;->mMaxVersionCode:J

    .line 198
    return-object p0
.end method

.method public setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;
    .locals 0
    .param p1, "minVersionCode"    # J

    .line 184
    iput-wide p1, p0, Landroid/app/compat/PackageOverride$Builder;->mMinVersionCode:J

    .line 185
    return-object p0
.end method
