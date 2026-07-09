.class public interface abstract Landroid/app/AppOpsManager$OnOpStartedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpStartedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OnOpStartedListener$StartedType;
    }
.end annotation


# static fields
.field public static final START_TYPE_FAILED:I = 0x0

.field public static final START_TYPE_RESUMED:I = 0x2

.field public static final START_TYPE_STARTED:I = 0x1


# virtual methods
.method public abstract onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
.end method

.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "result"    # I
    .param p7, "startType"    # I
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    .line 7980
    const/4 v0, 0x2

    if-eq p7, v0, :cond_0

    .line 7981
    invoke-interface/range {p0 .. p6}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V

    .line 7983
    :cond_0
    return-void
.end method

.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 10
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "flags"    # I
    .param p7, "result"    # I
    .param p8, "startType"    # I
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 8010
    if-nez p5, :cond_0

    .line 8011
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-interface/range {v0 .. v9}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 8014
    :cond_0
    return-void
.end method
