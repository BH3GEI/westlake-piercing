.class public interface abstract Landroid/app/AppOpsManager$OnOpNotedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpNotedListener"
.end annotation


# virtual methods
.method public abstract onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "flags"    # I
    .param p7, "result"    # I

    .line 7848
    if-nez p5, :cond_0

    .line 7849
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p6    # "flags":I
    .end local p7    # "result":I
    .local v1, "op":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "flags":I
    .local v6, "result":I
    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 7848
    .end local v1    # "op":Ljava/lang/String;
    .end local v2    # "uid":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "attributionTag":Ljava/lang/String;
    .end local v5    # "flags":I
    .end local v6    # "result":I
    .restart local p1    # "op":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "packageName":Ljava/lang/String;
    .restart local p4    # "attributionTag":Ljava/lang/String;
    .restart local p6    # "flags":I
    .restart local p7    # "result":I
    :cond_0
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    .line 7851
    .end local p1    # "op":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p6    # "flags":I
    .end local p7    # "result":I
    .restart local v1    # "op":Ljava/lang/String;
    .restart local v2    # "uid":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "attributionTag":Ljava/lang/String;
    .restart local v5    # "flags":I
    .restart local v6    # "result":I
    :goto_0
    return-void
.end method
