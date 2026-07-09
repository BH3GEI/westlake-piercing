.class public final Landroid/companion/Telecom$CallFacilitator;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallFacilitator"
.end annotation


# static fields
.field public static final EXTENDED_IDENTIFIER:J = 0x10900000003L

.field public static final IDENTIFIER:J = 0x10900000002L

.field public static final NAME:J = 0x10900000001L


# direct methods
.method public constructor <init>(Landroid/companion/Telecom;)V
    .locals 0
    .param p1, "this$0"    # Landroid/companion/Telecom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
