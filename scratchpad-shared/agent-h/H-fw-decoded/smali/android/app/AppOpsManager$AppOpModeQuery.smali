.class final Landroid/app/AppOpsManager$AppOpModeQuery;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppOpModeQuery"
.end annotation


# instance fields
.field final attributionTag:Ljava/lang/String;

.field final methodName:Ljava/lang/String;

.field final op:I

.field final packageName:Ljava/lang/String;

.field final uid:I

.field final virtualDeviceId:I


# direct methods
.method constructor <init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "virtualDeviceId"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "methodName"    # Ljava/lang/String;

    .line 8093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8094
    iput p1, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    .line 8095
    iput p2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    .line 8096
    iput-object p3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    .line 8097
    iput p4, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    .line 8098
    iput-object p5, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    .line 8099
    iput-object p6, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->methodName:Ljava/lang/String;

    .line 8100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 8116
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 8117
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 8118
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 8120
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$AppOpModeQuery;

    .line 8121
    .local v2, "other":Landroid/app/AppOpsManager$AppOpModeQuery;
    iget v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    iget v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    iget v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    iget v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    .line 8123
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 8121
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 8111
    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 8104
    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    .line 8105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    .line 8106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    iget-object v6, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->methodName:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 8104
    const-string v1, "AppOpModeQuery(op=%d, uid=%d, packageName=%s, virtualDeviceId=%d, attributionTag=%s, methodName=%s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
