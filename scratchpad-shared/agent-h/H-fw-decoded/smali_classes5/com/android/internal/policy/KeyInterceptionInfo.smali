.class public Lcom/android/internal/policy/KeyInterceptionInfo;
.super Ljava/lang/Object;
.source "KeyInterceptionInfo.java"


# instance fields
.field public final blacklist inputFeaturesFlags:I

.field public final blacklist layoutParamsPrivateFlags:I

.field public final blacklist layoutParamsType:I

.field public final blacklist windowOwnerUid:I

.field public final blacklist windowTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "flags"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "inputFeaturesFlags"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    .line 34
    iput p2, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    .line 35
    iput-object p3, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    .line 37
    iput p5, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->inputFeaturesFlags:I

    .line 38
    return-void
.end method
