.class public final Landroid/app/ComponentCaller;
.super Ljava/lang/Object;
.source "ComponentCaller.java"


# instance fields
.field private final mActivityToken:Landroid/os/IBinder;

.field private final mCallerToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "callerToken"    # Landroid/os/IBinder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    .line 49
    iput-object p2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    .line 50
    return-void
.end method


# virtual methods
.method public checkContentUriPermission(Landroid/net/Uri;I)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .line 158
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/app/ActivityClient;->checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 164
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/app/ComponentCaller;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/app/ComponentCaller;

    .line 167
    .local v1, "other":Landroid/app/ComponentCaller;
    iget-object v2, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    iget-object v3, v1, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    iget-object v3, v1, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 165
    .end local v1    # "other":Landroid/app/ComponentCaller;
    :cond_1
    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 3

    .line 123
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 3

    .line 85
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityClient;->getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 173
    const/16 v0, 0x11

    .line 174
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/ComponentCaller;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 175
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/ComponentCaller;->mCallerToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 176
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
