.class Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$1;
.super Ljava/lang/Object;
.source "RemoteComposePlayer.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$1;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist haptic(I)V
    .locals 1
    .param p1, "type"    # I

    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$1;->this$0:Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->-$$Nest$mprovideHapticFeedback(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;I)V

    .line 142
    return-void
.end method
