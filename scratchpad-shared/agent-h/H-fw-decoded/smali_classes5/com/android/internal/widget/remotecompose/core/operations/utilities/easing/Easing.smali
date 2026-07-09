.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.super Ljava/lang/Object;
.source "Easing.java"


# static fields
.field public static final blacklist CUBIC_ACCELERATE:I = 0x2

.field public static final blacklist CUBIC_ANTICIPATE:I = 0x5

.field public static final blacklist CUBIC_CUSTOM:I = 0xb

.field public static final blacklist CUBIC_DECELERATE:I = 0x3

.field public static final blacklist CUBIC_LINEAR:I = 0x4

.field public static final blacklist CUBIC_OVERSHOOT:I = 0x6

.field public static final blacklist CUBIC_STANDARD:I = 0x1

.field public static final blacklist EASE_OUT_BOUNCE:I = 0xd

.field public static final blacklist EASE_OUT_ELASTIC:I = 0xe

.field public static final blacklist SPLINE_CUSTOM:I = 0xc


# instance fields
.field blacklist mType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 84
    packed-switch p0, :pswitch_data_0

    .line 106
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_CURVE_TYPE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_1
    const-string v0, "EASE_OUT_ELASTIC"

    return-object v0

    .line 102
    :pswitch_2
    const-string v0, "EASE_OUT_BOUNCE"

    return-object v0

    .line 100
    :pswitch_3
    const-string v0, "SPLINE_CUSTOM"

    return-object v0

    .line 98
    :pswitch_4
    const-string v0, "CUBIC_CUSTOM"

    return-object v0

    .line 96
    :pswitch_5
    const-string v0, "CUBIC_OVERSHOOT"

    return-object v0

    .line 94
    :pswitch_6
    const-string v0, "CUBIC_ANTICIPATE"

    return-object v0

    .line 92
    :pswitch_7
    const-string v0, "CUBIC_LINEAR"

    return-object v0

    .line 90
    :pswitch_8
    const-string v0, "CUBIC_DECELERATE"

    return-object v0

    .line 88
    :pswitch_9
    const-string v0, "CUBIC_ACCELERATE"

    return-object v0

    .line 86
    :pswitch_a
    const-string v0, "CUBIC_STANDARD"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract blacklist get(F)F
.end method

.method public abstract blacklist getDiff(F)F
.end method

.method public blacklist getType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->mType:I

    return v0
.end method
