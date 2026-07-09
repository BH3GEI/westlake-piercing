.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sortCameraIds([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2549
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 2552
    const/4 v0, 0x0

    .local v0, "s1Int":I
    const/4 v1, 0x0

    .line 2554
    .local v1, "s2Int":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2557
    .end local v0    # "s1Int":I
    .local v2, "s1Int":I
    goto :goto_0

    .line 2555
    .end local v2    # "s1Int":I
    .restart local v0    # "s1Int":I
    :catch_0
    move-exception v2

    .line 2556
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    move v2, v0

    .line 2560
    .end local v0    # "s1Int":I
    .local v2, "s1Int":I
    :goto_0
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2563
    .end local v1    # "s2Int":I
    .local v0, "s2Int":I
    goto :goto_1

    .line 2561
    .end local v0    # "s2Int":I
    .restart local v1    # "s2Int":I
    :catch_1
    move-exception v0

    .line 2562
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    move v0, v1

    .line 2566
    .end local v1    # "s2Int":I
    .local v0, "s2Int":I
    :goto_1
    if-ltz v2, :cond_0

    if-ltz v0, :cond_0

    .line 2567
    sub-int v1, v2, v0

    return v1

    .line 2568
    :cond_0
    if-ltz v2, :cond_1

    .line 2569
    const/4 v1, -0x1

    return v1

    .line 2570
    :cond_1
    if-ltz v0, :cond_2

    .line 2571
    const/4 v1, 0x1

    return v1

    .line 2574
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
