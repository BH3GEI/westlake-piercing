.class public interface abstract Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
.super Ljava/lang/Object;
.source "ScrollableComponent.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
    }
.end annotation


# static fields
.field public static final blacklist SCROLL_HORIZONTAL:I = 0x1

.field public static final blacklist SCROLL_NONE:I = 0x0

.field public static final blacklist SCROLL_VERTICAL:I = 0x2


# virtual methods
.method public blacklist getScrollAxisRange()Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I
    .locals 0
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "offset"    # I

    .line 47
    return p2
.end method

.method public abstract blacklist scrollDirection()I
.end method

.method public blacklist showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)Z
    .locals 1
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "childId"    # I

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsScrollByOffset()Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method
