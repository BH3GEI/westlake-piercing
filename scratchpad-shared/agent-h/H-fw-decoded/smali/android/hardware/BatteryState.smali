.class public abstract Landroid/hardware/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/BatteryState$BatteryStatus;
    }
.end annotation


# static fields
.field public static final STATUS_CHARGING:I = 0x2

.field public static final STATUS_DISCHARGING:I = 0x3

.field public static final STATUS_FULL:I = 0x5

.field public static final STATUS_NOT_CHARGING:I = 0x4

.field public static final STATUS_UNKNOWN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCapacity()F
.end method

.method public abstract getStatus()I
.end method

.method public abstract isPresent()Z
.end method
