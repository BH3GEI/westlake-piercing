.class public final Landroid/companion/Telecom$Call;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Call"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/Telecom$Call$Origin;
    }
.end annotation


# static fields
.field public static final AUDIO_PROCESSING:I = 0x5

.field public static final CONTROLS:J = 0x20e00000004L

.field public static final DIALING:I = 0x8

.field public static final DIRECTION:J = 0x10e00000005L

.field public static final DISCONNECTED:I = 0x7

.field public static final ID:J = 0x10900000001L

.field public static final INCOMING:I = 0x1

.field public static final ONGOING:I = 0x2

.field public static final ON_HOLD:I = 0x3

.field public static final ORIGIN:J = 0x10b00000002L

.field public static final OUTGOING:I = 0x2

.field public static final RINGING:I = 0x1

.field public static final RINGING_SILENCED:I = 0x4

.field public static final RINGING_SIMULATED:I = 0x6

.field public static final STATUS:J = 0x10e00000003L

.field public static final UNKNOWN_DIRECTION:I

.field public static final UNKNOWN_STATUS:I


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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
