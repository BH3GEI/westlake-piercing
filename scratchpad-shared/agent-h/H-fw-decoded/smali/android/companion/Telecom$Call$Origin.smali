.class public final Landroid/companion/Telecom$Call$Origin;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom$Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Origin"
.end annotation


# static fields
.field public static final APP_ICON:J = 0x10c00000002L

.field public static final CALLER_ID:J = 0x10900000001L

.field public static final FACILITATOR:J = 0x10b00000003L


# direct methods
.method public constructor <init>(Landroid/companion/Telecom$Call;)V
    .locals 0
    .param p1, "this$1"    # Landroid/companion/Telecom$Call;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
