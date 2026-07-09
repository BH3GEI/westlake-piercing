.class public final Landroid/tracing/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/tracing/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist clientSideProtoLogging()Z
    .locals 1

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist perfettoIme()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public greylist perfettoImeTracing()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist perfettoProtologTracing()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public greylist perfettoTransitionTracing()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public greylist perfettoViewCaptureTracing()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public greylist perfettoWmDump()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist perfettoWmDumpCts()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist perfettoWmTracing()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public greylist systemServerLargePerfettoShmemBuffer()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method
