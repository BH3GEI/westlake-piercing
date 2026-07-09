.class public final Landroid/aconfigd/Aconfigd$StorageRequestMessage$ResetStorageMessage;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfigd/Aconfigd$StorageRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResetStorageMessage"
.end annotation


# static fields
.field public static final ALL:J = 0x10800000001L

.field public static final CONTAINER:J = 0x10900000002L


# direct methods
.method public constructor <init>(Landroid/aconfigd/Aconfigd$StorageRequestMessage;)V
    .locals 0
    .param p1, "this$1"    # Landroid/aconfigd/Aconfigd$StorageRequestMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
