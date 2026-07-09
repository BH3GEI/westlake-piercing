.class public final Landroid/view/contentprotection/ContentProtectionUtils;
.super Ljava/lang/Object;
.source "ContentProtectionUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getEventTextLower(Landroid/view/contentcapture/ContentCaptureEvent;)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # Landroid/view/contentcapture/ContentCaptureEvent;

    .line 34
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 35
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 36
    const/4 v1, 0x0

    return-object v1

    .line 38
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getHintTextLower(Landroid/view/contentcapture/ViewNode;)Ljava/lang/String;
    .locals 2
    .param p0, "viewNode"    # Landroid/view/contentcapture/ViewNode;

    .line 57
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 58
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ViewNode;->getHint()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 62
    return-object v0

    .line 64
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getViewNodeTextLower(Landroid/view/contentcapture/ViewNode;)Ljava/lang/String;
    .locals 2
    .param p0, "viewNode"    # Landroid/view/contentcapture/ViewNode;

    .line 44
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 48
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    .line 49
    return-object v0

    .line 51
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
