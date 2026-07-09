.class public final Landroid/companion/virtual/ActivityPolicyExemption$Builder;
.super Ljava/lang/Object;
.source "ActivityPolicyExemption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/ActivityPolicyExemption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mDisplayId:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/companion/virtual/ActivityPolicyExemption;
    .locals 5

    .line 190
    iget-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_2

    .line 194
    new-instance v0, Landroid/companion/virtual/ActivityPolicyExemption;

    iget-object v1, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mDisplayId:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/companion/virtual/ActivityPolicyExemption;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/companion/virtual/ActivityPolicyExemption-IA;)V

    return-object v0

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either component name or package name must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComponentName(Landroid/content/ComponentName;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mPackageName:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public setDisplayId(I)Landroid/companion/virtual/ActivityPolicyExemption$Builder;
    .locals 0
    .param p1, "displayId"    # I

    .line 178
    iput p1, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mDisplayId:I

    .line 179
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/companion/virtual/ActivityPolicyExemption$Builder;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mComponentName:Landroid/content/ComponentName;

    .line 165
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/companion/virtual/ActivityPolicyExemption$Builder;->mPackageName:Ljava/lang/String;

    .line 166
    return-object p0
.end method
